<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <html>
      <head>
        <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous"
        />
        <script
          type="text/javascript"
          src="https://www.gstatic.com/charts/loader.js"
        ></script>
        <script type="text/javascript">
          google.charts.load("current", { packages: ["corechart"] });
          google.charts.setOnLoadCallback(drawChart);

          // let tempdata = ${};  일단 이건 나중에

          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ["Age", "Weight"],
              // 일단 임의적 세팅값으로 사용
              [8, 12],
              [4, 5.5],
              [11, 14],
              [4, 5],
              [3, 3.5],
              [6.5, 7],
            ]);

            var options = {
              title: "Age vs. Weight comparison",
              //   축
              hAxis: { title: "Age", minValue: 0, maxValue: 15 },
              vAxis: { title: "Weight", minValue: 0, maxValue: 15 },
              legend: "none",
            };

            var chart = new google.visualization.ScatterChart(
              document.getElementById("chart_div")
            );

            chart.draw(data, options);
          }
        </script>
        <style>
          * {
            border: 0.1rem solid gray;
          }

          .vh-50 {
            height: 50vh;   
          }
        </style>
      </head>
      <body>
        <div class="container">
          <div class="row vh-50">
            <!-- vh  디바이스용 디바이스의 원래 사이즈를 알 수 있따.  디바이스의 50% 사용 -->
            <div class="col-5" id="chart_div"></div>
            <div class="col-7">Aside left</div>
          </div>
        </div>

        <!-- <div id="chart_div" style="width: 500px; height: 300px"></div> -->
      </body>
    </html>
  </head>
  <body>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
