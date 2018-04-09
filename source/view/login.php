<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  <link rel="stylesheet" href="source/css/login.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="source/js/checkLogin.js"></script>
  <style>
    p{color: red !important}
  </style>
</head>

<body>

  <div class="login-container">
  <section class="login" id="login">
    <header>
      <h2>Quản lý sinh viên đăng nhập</h2>
      <!-- <h4>Login</h4> -->
    </header>
    <form class="login-form" method="post" onsubmit="checkLogin(); return false">
      <input type="text" name="username" class="login-input" placeholder="Tài khoản" required autofocus/>
      <input type="password" name="password" class="login-input" placeholder="Mật khẩu" required/>
      <div class="submit-container">
      <button class="login-button">Đăng nhập</button>
      </div>
    </form>
  </section>
  <p></p>
</div>
  
</body>

</html>
