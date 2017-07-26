<%--
  Created by IntelliJ IDEA.
  User: sunjian
  Date: 2017/4/14
  Time: 上午10:52
  To change this template use File | Settings | File Templates.
                       ::
                      :;J7, :,                        ::;7:
                      ,ivYi, ,                       ;LLLFS:
                      :iv7Yi                       :7ri;j5PL
                     ,:ivYLvr                    ,ivrrirrY2X,
                     :;r@Wwz.7r:                :ivu@kexianli.
                    :iL7::,:::iiirii:ii;::::,,irvF7rvvLujL7ur
                   ri::,:,::i:iiiiiii:i:irrv177JX7rYXqZEkvv17
                ;i:, , ::::iirrririi:i:::iiir2XXvii;L8OGJr71i
              :,, ,,:   ,::ir@mingyi.irii:i:::j1jri7ZBOS7ivv,
                 ,::,    ::rv77iiiriii:iii:i::,rvLq@huhao.Li
             ,,      ,, ,:ir7ir::,:::i;ir:::i:i::rSGGYri712:
           :::  ,v7r:: ::rrv77:, ,, ,:i7rrii:::::, ir7ri7Lri
          ,     2OBBOi,iiir;r::        ,irriiii::,, ,iv7Luur:
        ,,     i78MBBi,:,:::,:,  :7FSL: ,iriii:::i::,,:rLqXv::
        :      iuMMP: :,:::,:ii;2GY7OBB0viiii:i:iii:i:::iJqL;::
       ,     ::::i   ,,,,, ::LuBBu BBBBBErii:i:i:i:i:i:i:r77ii
      ,       :       , ,,:::rruBZ1MBBqi, :,,,:::,::::::iiriri:
     ,               ,,,,::::i:  @arqiao.       ,:,, ,:::ii;i7:
    :,       rjujLYLi   ,,:::::,:::::::::,,   ,:i,:,,,,,::i:iii
    ::      BBBBBBBBB0,    ,,::: , ,:::::: ,      ,,,, ,,:::::::
    i,  ,  ,8BMMBBBBBBi     ,,:,,     ,,, , ,   , , , :,::ii::i::
    :      iZMOMOMBBM2::::::::::,,,,     ,,,,,,:,,,::::i:irr:i:::,
    i   ,,:;u0MBMOG1L:::i::::::  ,,,::,   ,,, ::::::i:i:iirii:i:i:
    :    ,iuUuuXUkFu7i:iii:i:::, :,:,: ::::::::i:i:::::iirr7iiri::
    :     :rk@Yizero.i:::::, ,:ii:::::::i:::::i::,::::iirrriiiri::,
     :      5BMBBBBBBSr:,::rv2kuii:::iii::,:i:,, , ,,:,:i@petermu.,
          , :r50EZ8MBBBBGOBBBZP7::::i::,:::::,: :,:,::i;rrririiii::
              :jujYY7LS0ujJL7r::,::i::,::::::::::::::iirirrrrrrr:ii:
           ,:  :@kevensun.:,:,,,::::i:i:::::,,::::::iir;ii;7v77;ii;i,
           ,,,     ,,:,::::::i:iiiii:i::::,, ::::iiiir@xingjief.r;7:i,
        , , ,,,:,,::::::::iiiiiiiiii:,:,:::::::::iiir;ri7vL77rrirri::
         :,, , ::::::::i:::i:::i:i::,,,,,:,::i:i:::iir;@Secbone.ii:::

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--指定ErrorPage页面--%>
<%@ page errorPage="ErrorPage.jsp" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" ,chrome="1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%--引入bootstra.css文件--%>
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <%--导入mapbox--%>
  <script src='https://api.mapbox.com/mapbox-gl-js/v0.35.1/mapbox-gl.js'></script>
  <link href='https://api.mapbox.com/mapbox-gl-js/v0.35.1/mapbox-gl.css' rel='stylesheet'/>
  <title>Global FT Platform</title>

  <script src="/js/highchart.js"></script>

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
            <li><a href="#">Apn</a></li>
            <li><a href="#">Operator</a></li>
            <li><a href="#">Network</a></li>
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
<div class="container-fluid">
  <div class="row clearfix">
    <%--添加mapbox--%>
    <div class="col-md-8 column" id='map' style='height: 500px;'></div>
    <script>
      mapboxgl.accessToken = 'pk.eyJ1Ijoic3VuZnJlZGR5IiwiYSI6ImNqMWZ6N2U3aTAwMGMzMm8waXIzYXZycTMifQ.mYh7dBEsbPAtS365Mx4fIg';
      var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: [-14.50, 40],
        zoom: 1.2,
        attributionControl:false, //mapbox右下角的属性标签
        logoPosition:'bottom-right',//logo position
        scrollZoom:true //是否启用鼠标滚轮放大缩小
      });

//      加载GeoJson
      map.on('load', function () {

        map.addLayer({
          "id": "points",
          "type": "symbol",
          "source": {
            "type": "geojson",
            "data": {
              "type": "FeatureCollection",
              "features": [{
                "type": "Feature",
                "geometry": {
                  "type": "Point",
                  "coordinates": [-77.03238901390978, 38.913188059745586]
                },
                "properties": {
                  "title": "Mapbox DC",
                  "icon":"moment"
                }
              }
              ]
            }
          },
          "layout": {
            "icon-image": "{icon}-15",
            "text-field": "{title}",
            "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
            "text-offset": [0, 0.6],
            "text-anchor": "top"
          }
        });
      });


    </script>
    <%--右列--%>
    <div class="col-md-4 column" style="height: 500px">
      <%--搜索框--%>
      <%--<div class="row">--%>
        <%--<div class="col-lg-11">--%>
          <%--<div class="input-group">--%>
            <%--<input type="text" class="form-control" placeholder="Search for...">--%>
            <%--<span class="input-group-btn">--%>
            <%--<button class="btn btn-default" type="button">Go!</button>--%>
          <%--</span>--%>
          <%--</div><!-- /input-group -->--%>
        <%--</div><!-- /.col-lg-6 -->--%>
      <%--</div><!-- /.row -->--%>
      <%--添加表格--%>
      <div class="table-responsive" style="font-size: 12px">
        <table class="table table-bordered table-hover">
          <caption>Global FT live station</caption>
          <a href="form_LiveFT.jsp" class="btn btn-primary btn-xs active" role="button">Setting</a>
          <thead>
          <tr>
            <th>Country</th>
            <th>Project</th>
            <th>TaskName</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>Beijing</td>
            <td>SharkL2</td>
            <td>SharkL2 CMCC预测试</td>
          </tr>
          <tr>
            <td>Thailand</td>
            <td>SharkLs</td>
            <td>运营商VoWifi测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          <tr>
            <td>Shanghai</td>
            <td>PikeL</td>
            <td>PikeL测试</td>
          </tr>
          </tbody>
        </table>
      </div>
      <%--分页工具--%>
      <div>
        <nav aria-label="Page navigation" >
          <ul class="pagination pagination-sm" style="margin-top: 0px">
            <li>
              <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
              <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-4">
      <h4>Shanghai</h4>
      <P>Project: SharkL2</P>
      <p>Start time: 2017-04-24 13:30:00</p>
      <p>Stauts: testing</p>
    </div>

    <div class="col-md-4">
      <p></p>
      <h4>Test Detail</h4>

      <%--进度条--%>
      Test Process
      <div class="progress" style="width: 300px">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
             style="width: 60%;">
          60%
        </div>
      </div>
      Pass Rate
      <div class="progress" style="width: 300px">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
             style="width: 100%;">
          100%
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <%--添加highchart图表容器--%>
      <div id="container" style="min-width:400px;height:200px">
        <script type="text/javascript" src="../../js/highchart.js"></script>
      </div>
    </div>
  </div>
</div>
</body>
</html>
