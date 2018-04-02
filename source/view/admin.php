<!DOCTYPE html>
<html lang="en">
<head>
  <title>Administrator</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
  html,body {
    height: 100%;
  }
  ul.nav-pills {
    margin-top: 40px;
    background-color: #009688;
  }
  .left{
    background-color: #009688;
  }
  .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
    color: #009688;
    background-color: #fff;
  }
  a{color: #fff}
  a:hover{color: yellowgreen}
  input[name=search]{
    margin-top: 20px;
  }
  button[name=btn-search]{
    background-color: #fff;
    color: #009688;
    margin-top: 5px;
    display: none;
  }
  button[name=btn-logout]{
    margin-top: 15px;
    font-size: 15px;
    color: #fff;
    background-color: #009688;
  }
  </style>
</head>
<body>

<div class="container-fluid h-100">
  <div class="row h-100">
    <div class="col-2 left">
      <nav>
        <form class="form" method="post">
          <input type="text" name="search" class="form-control form-control-sm" placeholder="Tìm kiếm">
          <button type="submit" name="btn-search" class="btn btn-sm " >Tìm</button>
        </form>
      </nav>
      <nav>
        <ul class="nav nav-pills flex-column">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="pill" href="#home">Khoa</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="pill" href="#menu1">Khóa</a>
          </li>
        </ul>
      </nav>

      <nav>
        <form class="form" method="post" action="router/action.php">
          <input type="hidden" name="action" value="logout">
          <button type="submit" name="btn-logout" class="btn btn-sm ">Đăng xuât</button>
        </form>
      </nav>
    </div>

    <div class="col-9 right">
      <h3></h3>
    </div>

  </div>
</div>

</body>
</html>
