<%--
  Created by IntelliJ IDEA.
  User: sunjian
  Date: 2017/4/25
  Time: 下午6:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" ,chrome="1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%--引入bootstra.css文件--%>
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <title>FT Coverage</title>
  <script src="/js/maps.js"></script>
  <link href="/css/maps.css" rel="stylesheet">
  <script src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
  <script src="http://cdn.hcharts.cn/highmaps/highmaps.js"></script>

</head>
<body style="padding-top: 60px;">
<%--这里由于navbar置顶，需要给body加一个padding，以正常显示body的内容，不被navbar遮挡--%>
<!--引入jquery.js和bootstrap.js，这里jquery必须放在前面，这两个放在body中引入比较好，提高加载速度。样式先显示，交互逻辑可以后显示-->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--引入HighChart--%>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/modules/exporting.js"></script>
<script src="http://cdn.hcharts.cn/highmaps/highmaps.js"></script>
<script src="https://img.hcharts.cn/mapdata/index.js"></script>
<script src="http://cdn.hcharts.cn/libs/jquery-ui/jquery-ui.js"></script>
<script src="https://img.hcharts.cn/static/common/jquery.combobox.js"></script>
<link href="https://img.hcharts.cn/libs/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet">
<link href="https://img.hcharts.cn/libs/font-awesome/css/font-awesome.css" rel="stylesheet">
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
                <li><a href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
                <li class="active"><a href="FTcoverage.jsp">FT Coverage</a></li>
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

<%--引入highmaps--%>
<script src="/js/maps.js"></script>
<div id="container" style="height: 400px; width: 600px">
  <script type="text/javascript" src="/js/maps.js"></script>
</div>

</body>
</html>
