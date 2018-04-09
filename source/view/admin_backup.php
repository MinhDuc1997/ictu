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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="source/js/menu.js"></script>
  <style>
  html,body {
    height: 100%;
  }
  ul.nav-pills{
    margin-top: 40px;
    background-color: #009688;
  }
  ul ul.nav-pills{
    margin-top: 0px;
    margin-left: 10px;
    font-size: 15px;
    background-color: #009688;
  }
  ul ul ul.nav-pills{
    margin-top: 0px;
    margin-left: 15px;
    font-size: 15px;
    background-color: #009688;
  }
  .ul-2, .ul-3, .ul-4, .ul-5{
    display: none;
  }
  li li.nav-item{
    margin-top: 5px;
  }
  .left{
    width: 200px !important;
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
    margin-top: 0px;
    color: #009688;
    background-color: #fff;
  }
  .right{
    overflow-x: hidden;
    height: 100%;
  }
  tr:hover{
    cursor: pointer;
  }
  .btn.btn-primary.dropdown-toggle{
    background: #fff;
    color: #009688;
  }
  .user-info{
    color: #009688;
    margin-top: 15px;
    background-color: #fff;
    text-align: center;
    border-radius: 5px;
    line-height: 0.2;
  }
  .title{
    display: block;
    margin-top: 35px;
    margin-bottom: 50px;
  }
  thead{
    font-size: 15px;
    background-color: #009688;
    color: #fff;
  }
  tbody{
    font-size: 14px;
  }
  </style>
</head>
<body onload="menu()">

<div class="container-fluid h-100">
  <div class="row h-100">
    <div class="col-3 left">
      <nav class="user-info">
        <h6 class="font-weight-bold">Quản trị viên</h6>
        <p><small>Bomi</small></p>
        <form class="form" method="post" action="router/action.php">
          <input type="hidden" name="action" value="logout">
          <button type="submit" name="btn-logout" class="btn btn-sm "><small>Đăng xuất</small></button>
        </form>
      </nav>
      <nav>
        <form class="form" method="post">
          <input type="text" name="search" class="form-control form-control-sm" placeholder="Tìm kiếm">
          <button type="submit" name="btn-search" class="btn btn-sm " >Tìm</button>
        </form>
      </nav>
      <nav>
          <ul class="nav nav-pills flex-column">
            <li class="nav-item li-1"  >
              <a class="nav-link active a-1" data-toggle="pill" href="#home" data-value="a-1">Khoa</a>
              <ul class="nav nav-pills flex-column ul-2">
                <li class="nav-item " >
                  <a class="nav-link active a-2" data-toggle="pill" href="#home" data-value="a-2">Cong nghe thong tin</a>
                  <ul class="nav nav-pills flex-column ul-3">
                    <li class="nav-item " data-type="">
                      <a class="nav-link active a-3" data-toggle="pill" href="#home" data-value="a-3">Ky thuat phan mem</a>
                      <ul class="nav nav-pills flex-column ul-4">
                        <li class="nav-item " data-type="">
                          <a class="nav-link active a-4" data-toggle="pill" href="#home" data-value="a-4">K14</a>
                          <ul class="nav nav-pills flex-column ul-5">
                            <li class="nav-item " data-type="">
                              <a class="nav-link active a-5" data-toggle="pill" href="#home" data-value="a-5">KTMP K14A</a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
          </ul>
      </nav>
    </div>

    <div class="col-9 right">
      <center><h5 class="font-weight-bold title">Danh sách sinh viên</h5></center>
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">Tên</th>
              <th scope="col">Lớp</th>
              <th scope="col">Giới tính</th>
              <th scope="col">Cư chú</th>
              <th scope="col">SĐT</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Nguyen Minh Duc</td>
              <td>CNTT K14C</td>
              <td>Nam</td>
              <td>Xa quyet thang, phuong Tan Thinh, TP Thai Nguyen</td>
              <td>01676460699</td>
            </tr>
            <tr class="bg-danger">
              <td>Nguyen Thi Lan Phuong</td>
              <td>Example</td>
              <td>Nu</td>
              <td>Example</td>
              <td>Example</td>
            </tr>
            <tr>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
            </tr>
            <tr>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
            </tr>
            <tr>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
            </tr>
            <tr>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
              <td>Example</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

  </div>
</div>

</body>
</html>
