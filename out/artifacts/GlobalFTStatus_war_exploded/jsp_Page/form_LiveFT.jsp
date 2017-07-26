<%--
  Created by IntelliJ IDEA.
  User: sunjian
  Date: 2017/5/5
  Time: 下午2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" ,chrome="1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%--引入bootstra.css文件--%>
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <%--导入mapbox--%>
  <script src='https://api.mapbox.com/mapbox-gl-js/v0.35.1/mapbox-gl.js'></script>
  <link href='https://api.mapbox.com/mapbox-gl-js/v0.35.1/mapbox-gl.css' rel='stylesheet'/>
  <title>Form_LiveFT</title>
</head>
<body style="padding-top: 60px;">
<%--这里由于navbar置顶，需要给body加一个padding，以正常显示body的内容，不被navbar遮挡--%>
<!--引入jquery.js和bootstrap.js，这里jquery必须放在前面，这两个放在body中引入比较好，提高加载速度。样式先显示，交互逻辑可以后显示-->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--引入HighChart--%>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/modules/exporting.js"></script>
<%--建立navbar--%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
              data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="../image/EIP_home_header_logo.png" alt="SPRD Brand" width="150px"></a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
        <li><a href="FTcoverage.jsp">FT Coverage</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Information <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <%--<form class="navbar-form navbar-left">--%>
      <%--<div class="form-group">--%>
      <%--<input type="text" class="form-control" placeholder="Search">--%>
      <%--</div>--%>
      <%--<button type="submit" class="btn btn-default">Submit</button>--%>
      <%--</form>--%>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">EN/CN</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
             aria-expanded="false">Login<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="container" style="margin-left: auto; margin-right: auto">
  <div class="row">
    <div class="col-xs-8 col-md-offset-2">
      <form class="form-horizontal">
<%--TaskName--%>
        <div class="form-group">
          <label for="inputTaskName" class="col-sm-2 control-label">Task Name</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTaskName" placeholder="Task Name">
          </div>
        </div>
  <%--Tester--%>
  <div class="form-group">
    <label for="inputTester" class="col-sm-2 control-label">Tester</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputTester" placeholder="Tester">
    </div>
  </div>
  <%--Country--%>
  <div class="form-group">
    <label for="inputCountry" class="col-sm-2 control-label">Country</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputCountry" placeholder="Country">
    </div>
  </div>
  <%--City--%>
  <div class="form-group">
    <label for="inputCity" class="col-sm-2 control-label">City</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputCity" placeholder="City">
    </div>
  </div>
  <%--Location--%>
  <div class="form-group">
    <label for="inputLocation" class="col-sm-2 control-label">Location</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputLocation" placeholder="Location">
    </div>
  </div>
<%--project--%>
        <div class="form-group">
          <label for="inputProject" class="col-sm-2 control-label">Project</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputProject" placeholder="Project">
          </div>
        </div>
  <%--AP Version--%>
        <div class="form-group">
          <label for="inputAP" class="col-sm-2 control-label">AP Version</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputAP" placeholder="AP Version">
          </div>
        </div>
  <%--CP Version--%>
        <div class="form-group">
          <label for="inputCP" class="col-sm-2 control-label">CP Version</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputCP" placeholder="CP Version">
          </div>
        </div>
  <%--Test Process--%>
        <div class="form-group">
          <label for="inputTestProcess" class="col-sm-2 control-label">Test Process</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputTestProcess" placeholder="Test Process">
          </div>
        </div>
  <%--Pass Rate--%>
        <div class="form-group">
          <label for="inputPassRate" class="col-sm-2 control-label">Pass Rate</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassRate" placeholder="Pass Rate">
          </div>
        </div>

        <div class="form-group">
          <label for="inputProject" class="col-sm-2 control-label">Project</label>
          <div class="col-sm-10">
            <select class="form-control">
              <option></option>
              <option>SharkLs</option>
              <option>SharkL2</option>
              <option>Whale2</option>
              <option>iWhale</option>
              <option>iWhale2</option>
              <option>Pike</option>
              <option>PikeL</option>
              <option>NemoG</option>
              <option>Other</option>>
            </select>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Submit</button>
          </div>
        </div>

      </form>
    </div>
  </div>
</div>


</body>
</html>
