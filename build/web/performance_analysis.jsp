<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
 
<!DOCTYPE HTML>
<html>
<head>
     <form>
         <input type="button" style="float: right" value="Go back!" class="btn-primary" onclick="history.back()">
        </form>
    <h1 align="center">Performance Analysis</h1>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Implementation', 'Existing system', 'Proposed system', ],
          ['Encryption', 2, 1,],
          ['Decryption', 4, 2,],
          
          
        ]);

        var options = {
          chart: {
            title: 'time',
            subtitle: 'ms',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>

</head>
<body>
   
 <div align="center" id="columnchart_material"  style="width: 800px; height: 500px;"></div>

        







</body>
</html>
        
    