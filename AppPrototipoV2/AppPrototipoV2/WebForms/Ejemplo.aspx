<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejemplo.aspx.cs" Inherits="AppPrototipoV2.Ejemplo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        
        var chart;

        // Load the Visualization API and the piechart package.
        google.load('visualization', '1.0', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Slices');
            data.addRows([
          ['Mushrooms', 20],
          ['Onions', 20],
          ['Olives', 20]
        ]);

            // Set chart options
            var options = { 'title': '',
                'width': 750,
                'height': 600,
                fontSize: '25',
                fontName: 'Open Sans, Regular',
                colors: ['#99cc66', '#ffcc66', '#33ccff'],
                legend: { alignment: 'center', textStyle: { fontSize: 14} }
            };

            // Instantiate and draw our chart, passing in some options.
            chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, options);

            google.visualization.events.addListener(chart, 'select', onAreaSliceSelected);
        }

        function onAreaSliceSelected() {
            var sel = chart.getSelection(); //is always null
            //var sel = chart.getChart().getSelection()
            alert('you selected ' + sel); //displays you selected null
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
                  <div id="chart_div">
                </div>
    </form>
</body>
</html>
