<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  <link rel="stylesheet" href="source/css/login.css">
  <script  src="source/js/login.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
</head>

<body>

  <div class="login-container">
  <section class="login" id="login">
    <header>
      <h2>Quản lý sinh viên đăng nhập</h2>
      <!-- <h4>Login</h4> -->
    </header>
    <form class="login-form" action="router/action.php" method="post">
      <input type="text" name="username" class="login-input" placeholder="Tài khoản" required autofocus/>
      <input type="password" name="password" class="login-input" placeholder="Mật khẩu" required/>
      <div class="submit-container">
      <input type="hidden" name="action" value="login">
      <button type="submit" class="login-button">Đăng nhập</button>
      </div>
    </form>
  </section>
</div>
  
</body>

</html>
