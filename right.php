        <!-- Right column -->
        <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
        <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
        <div id="col" class="noprint">
          <center>
          <div id="col-in">

<!-- About Me -->
<h3>
  <center>Thông tin</center>
</h3>

<div id="about-me">

  <p><strong>CTT Việc làm</strong></p>
  
  <p>0344332204</p>
  <p>vieclam.com<br />
  </p>
  <p><b>Quy nhơn, Bình Định</b></p>


</div> <!-- /about-me -->

<hr class="noscreen" />

<!-- Category -->
<center><h3>Đăng nhập</h3></center>

<div class="login">
  <form name="form1" method="post" action="login.php">
    <table width="100%" border="0">
      <tr>
        <td><strong>User Name</strong></td>
      </tr>
      <tr>
        <td><span id="sprytextfield1">
            <label>
              <input type="text" name="txtUser" id="txtUser">
            </label>
            <span class="textfieldRequiredMsg">*</span></span>
          <label></label></td>
      </tr>
      <tr>
        <td><strong>Password</strong></td>
      </tr>
      <tr>
        <td><span id="sprytextfield2">
            <label>
              <input type="password" name="txtPass" id="txtPass">
            </label>
            <span class="textfieldRequiredMsg">*</span></span></td>
      </tr>
      <tr>
        <td><strong>User kiểu</strong></td>
      </tr>
      <tr>
        <td><label>
            <select name="cmbUser" id="cmbUser">
              <option value="JobSeeker">Người tìm việc</option>
              <option value="Employer" selected="selected">Công ty</option>
              <option value="Administrator">Administrator</option>
            </select>
          </label></td>
      </tr>
      <tr>
        <td><label>
            <div align="center">
              <input type="submit" name="button" id="button" value="Login">
            </div>
          </label></td>
      </tr>
      <tr>
        <td>
          <div align="center"><a href="Forget.php"><strong>Quên mật khẩu </strong></a></div>
        </td>
      </tr>
    </table>
  </form>
</div>
<br />

<hr class="noscreen" />

<!-- Archive -->


<hr class="noscreen" />

<!-- Links -->

<hr class="noscreen" />
</div>
          </center>
          <!-- /col-in -->
        </div> <!-- /col -->
        <script type="text/javascript">
          <!--
          var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
          var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
          //
          -->
        </script>