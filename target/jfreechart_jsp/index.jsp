<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="java.io.File" %>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation" %>
<%
    DefaultCategoryDataset dataset = new DefaultCategoryDataset();
    dataset.addValue(25.0, "Team 1", "Monday");
    dataset.addValue(34.0, "Team 1", "Tuesday");
    dataset.addValue(19.0, "Team 1", "Wednesday");
    dataset.addValue(45.0, "Team 2", "Monday");
    dataset.addValue(40.0, "Team 2", "Tuesday");
    dataset.addValue(27.0, "Team 2", "Wednesday");

    JFreeChart chart = ChartFactory.createBarChart(
            "Daily Team Performance", // chart title
            "Day", // domain axis label
            "Score", // range axis label
            dataset, // data
            PlotOrientation.VERTICAL, // orientation
            true, // include legend
            true, // tooltips?
            false // URLs?
    );

    int width = 640;
    int height = 480;
    File barChart = new File("C:/Users/user/Desktop/Dev/jfreechart_jsp/src/main/webapp/bar_chart.png");
%>
<img src="bar_chart.png" width="640" height="480">
<br>
<a class="btn" href="./bar_chart.png" download>PNG Download</a>
