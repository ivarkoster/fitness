<div class="page-header">
    <h1>Congratulations!</h1>
</div>

<p>You're now flying with Phalcon. Great things are about to happen!</p>

<p>This page is located at <code>views/index/index.volt</code></p>



<script>
	var chart;
	var graph;

	// note, some of tada points don't have value field
	var chartData = [
		{
			"year": "1950",
			"value": -0.307
		},
		{
			"year": "1951",
			"value": -0.168
		},
		{
			"year": "1952",
			"value": -0.073
		},
		{
			"year": "1953",
			"value": -0.027
		},
		{
			"year": "1954",
			"value": -0.251
		},
		{
			"year": "1955",
			"value": -0.281
		},
		{
			"year": "1956",
			"value": -0.348
		},
		{
			"year": "1957",
			"value": -0.074
		},
		{
			"year": "1958",
			"value": -0.011
		},
		{
			"year": "1959",
			"value": -0.074
		},
		{
			"year": "1960",
			"value": -0.124
		},
		{
			"year": "1961",
			"value": -0.024
		},
		{
			"year": "1962",
			"value": -0.022
		},
		{
			"year": "1963",
			"value": 0
		},
		{
			"year": "1964",
			"value": -0.296
		},
		{
			"year": "1965",
			"value": -0.217
		},
		{
			"year": "1966",
			"value": -0.147
		},
		{
			"year": "1967"
		},
		{
			"year": "1968"
		},
		{
			"year": "1969"
		},
		{
			"year": "1970"
		},
		{
			"year": "1971",
			"value": -0.19
		},
		{
			"year": "1972",
			"value": -0.056
		},
		{
			"year": "1973",
			"value": 0.077
		},
		{
			"year": "1974",
			"value": -0.213
		},
		{
			"year": "1975",
			"value": -0.17
		},
		{
			"year": "1976",
			"value": -0.254
		},
		{
			"year": "1977",
			"value": 0.019
		},
		{
			"year": "1978",
			"value": -0.063
		},
		{
			"year": "1979",
			"value": 0.05
		},
		{
			"year": "1980",
			"value": 0.077
		},
		{
			"year": "1981",
			"value": 0.12
		},
		{
			"year": "1982",
			"value": 0.011
		},
		{
			"year": "1983",
			"value": 0.177
		},
		{
			"year": "1984"
		},
		{
			"year": "1985"
		},
		{
			"year": "1986"
		},
		{
			"year": "1987"
		},
		{
			"year": "1988"
		},
		{
			"year": "1989",
			"value": 0.104
		},
		{
			"year": "1990",
			"value": 0.255
		},
		{
			"year": "1991",
			"value": 0.21
		},
		{
			"year": "1992",
			"value": 0.065
		},
		{
			"year": "1993",
			"value": 0.11
		},
		{
			"year": "1994",
			"value": 0.172
		},
		{
			"year": "1995",
			"value": 0.269
		},
		{
			"year": "1996",
			"value": 0.141
		},
		{
			"year": "1997",
			"value": 0.353
		},
		{
			"year": "1998",
			"value": 0.548
		},
		{
			"year": "1999",
			"value": 0.298
		},
		{
			"year": "2000",
			"value": 0.267
		},
		{
			"year": "2001",
			"value": 0.411
		},
		{
			"year": "2002",
			"value": 0.462
		},
		{
			"year": "2003",
			"value": 0.47
		},
		{
			"year": "2004",
			"value": 0.445
		},
		{
			"year": "2005",
			"value": 0.47
		}
	];


	AmCharts.ready(function () {
		// SERIAL CHART
		chart = new AmCharts.AmSerialChart();

		chart.marginTop = 0;
		chart.marginRight = 0;
		chart.dataProvider = chartData;
		chart.categoryField = "year";
		chart.dataDateFormat = "YYYY";
		chart.balloon.cornerRadius = 6;

		// AXES
		// category
		var categoryAxis = chart.categoryAxis;
		categoryAxis.parseDates = true; // as our data is date-based, we set parseDates to true
		categoryAxis.minPeriod = "YYYY"; // our data is yearly, so we set minPeriod to YYYY
		categoryAxis.dashLength = 1;
		categoryAxis.minorGridEnabled = true;
		categoryAxis.axisColor = "#DADADA";

		// value
		var valueAxis = new AmCharts.ValueAxis();
		valueAxis.axisAlpha = 0;
		valueAxis.dashLength = 1;
		valueAxis.inside = true;
		chart.addValueAxis(valueAxis);

		// GRAPH
		graph = new AmCharts.AmGraph();
		graph.lineColor = "#b6d278";
		graph.negativeLineColor = "#487dac"; // this line makes the graph to change color when it drops below 0
		graph.bullet = "round";
		graph.bulletSize = 8;
		graph.bulletBorderColor = "#FFFFFF";

		graph.bulletBorderThickness = 2;
		graph.bulletBorderAlpha = 1;
		graph.connect = false; // this makes the graph not to connect data points if data is missing
		graph.lineThickness = 2;
		graph.valueField = "value";
		graph.balloonText = "[[category]]<br><b><span style='font-size:14px;'>[[value]] C</span></b>";
		chart.addGraph(graph);

		// CURSOR
		var chartCursor = new AmCharts.ChartCursor();
		chartCursor.cursorAlpha = 0;
		chartCursor.cursorPosition = "mouse";
		chartCursor.categoryBalloonDateFormat = "YYYY";
		chartCursor.graphBulletSize = 2;
		chart.addChartCursor(chartCursor);

		chart.creditsPosition = "bottom-right";

		// WRITE
		chart.write("chartdiv");
	});
</script>
<div id="chartdiv" style="width:100%; height:400px;"></div>

