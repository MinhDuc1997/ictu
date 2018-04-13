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
    margin-top: 30px;
    margin-bottom: 20px;
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
  button[name=btn-student]{
    background: #fff;
    color: #009688;
    border: none;
  }
  button[name=btn-student]:hover{
    background: #fff;
    color: #009688;
    border: none;
  }
  button[name=btn-student]:focus{
    background: #fff !important;
    color: #009688 !important;
    border: none !important;
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
    color: #009688;
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
  select{
    margin-top: 10px;
  }
  .err{
    color: red;
  }
  .update {
    display: none;
    position: fixed;
    width: 60%;
    height: 94%;
    border: 1px solid #fff;
    background-color: #009688;
    z-index: 1;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;
    opacity: 0.95;
    border-radius: 15px;
    top: 3%;
    padding: 25px;
    overflow-y: scroll;
}
#formGroupExampleInput {
    width: 52%;
    margin-left: 15%;
}
#example-date-input {
    width: 52%;
    margin-left: 15%;
}
.form-inline.mb-2.mr-sm-2.mb-sm-0.gr-1 {

    margin-bottom: 15px !important;
}
.l-1  #inlineFormCustomSelect {
    margin-left: 15%;
    width: 52%;
    display: block;

}
.l-2 #inlineFormCustomSelect {
    margin-left: 15%;
    width: 78%;
    display: block;
}
#formGroupExampleInput2 {
    width: 52%;
    margin-left: 15%;
}
label{
      color: #fff;
      margin-left: 15%;
}
.sl {
    width: 18%;
}
button[name=btn-update-student]{
  background-color: #fff;
  color: #009688;
  margin-left: auto;
  margin-right: auto;
  display: block;
  margin-top: 15px;
  margin-bottom: 15px;
}
button[name=btn-update-student]:hover{
    background: #fff;
    color: #009688;
    border: none;
  }
  button[name=btn-update-student]:focus{
    background: #fff !important;
    color: #009688 !important;
    border: none !important;
  }
.over {
    display: none;
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 1;
    background: rgba(41, 41, 36, 0.9);
}
</style>

</head>

<?php if(!isset($_COOKIE['username'])) header('location: login')?>

<body onload="menu()">
<div class="over">
  <div class="update">
    <form>
      <div class="row h-88 ">
        <div class="col-7 l-1">
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label for="formGroupExampleInput">Họ đệm</label>
            <input type="text" class="firstname form-control" id="formGroupExampleInput">
          </div>
           <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label for="formGroupExampleInput2">Tên</label>
            <input type="text" class="lastname form-control" id="formGroupExampleInput2">
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label for="formGroupExampleInput">Mã sv</label>
            <input type="text" class="studentid form-control" id="formGroupExampleInput">
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Giới tinh</label>
            <select class="gender custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect">
            </select>
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Quê quán</label>
            <select class="country custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect">
            </select>
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label for="example-date-input" class="mr-sm-2">Ngày sinh</label>
            <input class="date form-control" type="date" id="example-date-input">
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label for="formGroupExampleInput">Cư chú</label>
            <input type="text" class="residence_ form-control" id="formGroupExampleInput">
          </div>
        </div>
        <div class="col-5 l-2">
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Khoa</label>
            <select class="facluty_ custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect">
            </select>
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Ngành</label>
            <select class="majors_ custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect">
            </select>
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Khóa</label>
            <select class="course_ custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect">
            </select>
          </div>
          <div class="form mb-2 mr-sm-2 mb-sm-0 gr-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Lớp</label>
            <select class="class_ custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect">
            </select>
          </div>
        </div>
      </div>  
      
      <button type="button" name="btn-update-student" class="btn btn-primary btn-sm btn-update-student">Cập nhật</button>
    </form>
  </div>
</div>

<div class="container-fluid h-100">
  <div class="row h-100">
    <div class="col-3 left">
      <nav class="user-info">
        <h6 class="font-weight-bold">Quản trị viên</h6>
        <p><small><?php echo $_COOKIE['username'] ?></small></p>
        <form class="form" method="post" action="router/action.php">
          <input type="hidden" name="action" value="logout">
          <button type="submit" name="btn-logout" class="btn btn-sm "><small>Đăng xuất</small></button>
        </form>
      </nav>
      <nav>
        <form class="form" method="post">
          <input type="text" name="search" class="form-control form-control-sm" placeholder="Tìm kiếm">
          <button type="submit" name="btn-search" class="btn btn-sm" >Tìm</button>
        </form>
      </nav>
      <nav>
          <form method="post">
            <div class="form-group menu-form">
            </div>
            <button type="button" name="btn-student" class="btn btn-primary btn-sm btn-student">Xem</button>
            <p></p>
            <p class="err"></p>
          </form>
      </nav>
    </div>

    <div class="col-9 right">
      <center><h5 class="font-weight-bold title">Danh sách sinh viên</h5></center>
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">Masv</th>
              <th scope="col">Tên</th>
              <th scope="col">G.tính</th>
              <th scope="col">N.sinh</th>
              <th scope="col">Lớp</th>
              <th scope="col">Cư chú</th>
              <th scope="col">SĐT</th>
            </tr>
          </thead>
        </table>
      </div>
    </div>

  </div>
</div>
</body>
</html>
