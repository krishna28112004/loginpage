<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-container {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        padding: 20px;
        width: 300px;
        max-width: 90%;
        text-align: center;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    #loginPopup {
        display: none;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(0, 0, 0, 0.5);
        padding: 20px;
        border-radius: 8px;
        color: #fff;
        z-index: 1000;
    }
</style>
</head>
<body>
    <img src="ai" alt="">
<div class="login-container">
    <h2>Login</h2>
    <form id="loginForm">
        <input type="text" placeholder="Username" name="username" required>
        <input type="password" placeholder="Password" name="password" required>
        <input type="submit" value="Login">
    </form>
</div>
<div id="loginPopup">
    <p>Login Successful!</p>
</div>

<script>
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission
        var username = document.getElementsByName("username")[0].value;
        var password = document.getElementsByName("password")[0].value;
        // Here you would perform your login authentication, this is just a mock
        if (username === "krishna" && password === "password") {
            document.getElementById("loginPopup").style.display = "block";
            setTimeout(function() {
                document.getElementById("loginPopup").style.display = "none";
            }, 20000); // Hide popup after 2 seconds
        } else {
            alert("Invalid username or password");
        }
    });
</script>

</body>
</html>
