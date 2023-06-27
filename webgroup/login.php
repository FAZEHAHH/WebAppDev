<?php
session_start();
require_once 'pdo.php'; // Update the file name with your PDO configuration file
$failure = "";
$maxAttempts = 3;

// Check to see if we have some POST data, if we do process it
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (empty($_POST['who']) || empty($_POST['pass'])) {
        $failure = "Username and password are required";
    } else {
        $username = $_POST['who'];
        $stmt = $pdo->prepare('SELECT * FROM users WHERE username = :username');
        $stmt->execute(array(':username' => $username));
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row !== false) {
            $password = $_POST['pass'];
            $accountLocked = $row['account_locked'];

            if ($accountLocked) {
                header("Location: login.php");
                return;
            } elseif (password_verify($password, $row['password'])) {
                // Reset login attempts on successful login
                $stmt = $pdo->prepare('UPDATE users SET login_attempts = 0 WHERE username = :username');
                $stmt->execute(array(':username' => $username));
                // Redirect the browser to another page
                $position = $row['position'];
                if ($position === 'admin') {
                    header("Location: admin.php"); 
                } elseif ($position === 'test') {
                    header("Location: index.php"); 
                }
                return;
            } else {
                // Increase login attempts and lock account if necessary
                $loginAttempts = $row['login_attempts'] + 1;
                $stmt = $pdo->prepare('UPDATE users SET login_attempts = :attempts WHERE username = :username');
                $stmt->execute(array(':attempts' => $loginAttempts, ':username' => $username));

                if ($loginAttempts >= $maxAttempts) {
                    $stmt = $pdo->prepare('UPDATE users SET account_locked = 1 WHERE username = :username');
                    $stmt->execute(array(':username' => $username));
                    $failure = "Incorrect password. Account locked. Please try again later.";
                } else {
                    $failure = "Incorrect password. Attempts remaining: " . ($maxAttempts - $loginAttempts);
                }
            }
        } else {
            $failure = "Username not found";
        }
    }
}
?>


<link rel='stylesheet' type='text/css' media='screen' href='main.css'>
<div class="container">
    <h2>Login</h2>
    <?php
    if ($failure !== false) {
        echo '<p class="error-message">' . htmlentities($failure) . "</p>\n";
    }
    ?>
    <form method="POST">
        <div class="form-group">
            <label for="user">Username</label>
            <input type="text" name="who" id="user">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="pass" id="password">
        </div>
        <div class="form-group">
            <input type="submit" value="Log In">
        </div>
    </form>
</div>
</body>

</html>