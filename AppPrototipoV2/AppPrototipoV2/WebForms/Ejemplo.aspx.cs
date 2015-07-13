using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AppPrototipoV2
{
    public partial class Ejemplo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable myTable = new DataTable("myTable");
            DataColumn colItem = new DataColumn("item",Type.GetType("System.Int32"));
            DataColumn colItem1 = new DataColumn("item1", Type.GetType("System.Int32"));
            DataColumn colItem2 = new DataColumn("item2", Type.GetType("System.Int32"));

            myTable.Columns.Add(colItem);
            myTable.Columns.Add(colItem1);
            myTable.Columns.Add(colItem2);

            // Add five items.
            DataRow NewRow;
            for (int i = 0; i < 2; i++)
            {
                NewRow = myTable.NewRow();
                NewRow["item"] = i;
                myTable.Rows.Add(NewRow);
            }

            myTable.Rows[0]["item"] = "1";
            myTable.Rows[0]["item1"] = "2";
            myTable.Rows[0]["item2"] = "3";

            myTable.Rows[1]["item"] = "4";
            myTable.Rows[1]["item1"] = "5";
            myTable.Rows[1]["item2"] = "6";



            myTable.AcceptChanges();

            //DataView custDV = new DataView(custDS.Tables["Customers"], "Country = 'USA'", "ContactName", DataViewRowState.CurrentRows);
            DataView custDV = new DataView(myTable);

            Display(custDV);
        }




        public void Display(DataView dataview)
        {
            string values = "";
            string url = "https://www.google.com/jsapi";
            System.Text.StringBuilder javaScript = new System.Text.StringBuilder();
            javaScript.Append("<script type=\"text/javascript\" src=" + url + "></script>");
            javaScript.Append("<script type=\"text/javascript\"> google.load(\"visualization\", \"1\", {packages:[\"corechart\"]});");
            javaScript.Append("google.setOnLoadCallback(drawChart); function drawChart() { var data = google.visualization.arrayToDataTable([ ['Date', 'WMins'],");

            for (int loopCount = 0; loopCount < dataview.Count; loopCount++)
            {
                values = values + "['" + dataview[loopCount][1].ToString() + "'," + Math.Round(float.Parse(dataview[loopCount][2].ToString())) + "],";
            }//where i initialize my data for google chart...
            values = values.Substring(0, values.Length - 1);
            javaScript.Append(values);
            javaScript.Append("]);");
            javaScript.Append("var options = {title: 'Productivity Performance',hAxis: { title: 'Date', titleTextStyle: { color: 'red'} }}; var chart = new google.visualization.PieChart(document.getElementById('chart_div')); chart.draw(data, options);}");
            javaScript.Append("</script>");

            Page.RegisterStartupScript("Graph", javaScript.ToString());

        }
    }
}