// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import {GoogleCharts} from 'google-charts';
import {alertName} from './utilities/alert';

//Load the charts library with a callback
GoogleCharts.load(drawChart);

function drawChart() {

    // Standard google charts functionality is available as GoogleCharts.api after load
    const data = GoogleCharts.api.visualization.arrayToDataTable([
        ['Chart thing', 'Chart amount'],
        ['Lorem ipsum', 60],
        ['Dolor sit', 22],
        ['Sit amet', 18]
    ]);
    const pie_1_chart = new GoogleCharts.api.visualization.PieChart(document.getElementById('chart1'));
    pie_1_chart.draw(data);
}

window.alertName = alertName;
