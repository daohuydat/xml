$(function () {
    const endpoint = 'http://api.openweathermap.org/data/2.5/weather';
    const appid = '8afadb50217539f73274ab3198f80f95';

    const cityArr = [
        '1581130', /*ha noi*/
        '1567148', /*tam ki*/
        '1567621', /*son tay*/
        '1568212', /*sa dec*/
        '1570449', /*phu li*/
        '1582436', /*dong xoai*/
        '1583477', /*dien bien phu*/
        '1586357', /*cam pha*/
        '1591538' /*bac kan*/
    ];
    var resultArr = [];
    function getWeather(city) {
        $.ajax({
            url: endpoint + "?id=" + city + "&units=metric&mode=xml&appid=" + appid,
            cache: false,
            success: function (res) {
                //console.log(res);
                resultArr.push(extractWeather(res));
                if (resultArr.length === cityArr.length) {
                    //console.log(resultArr);
                    $('#weather').html(buildHtml());
                }
            }
        });
    }

    function extractWeather(doc) {
        return {
            city: doc.getElementsByTagName("city")[0].getAttribute('name'),
            temperature: doc.getElementsByTagName("temperature")[0].getAttribute('value'),
            humidity: doc.getElementsByTagName("humidity")[0].getAttribute('value')
        };
    }
    function weather() {
        for (var i = 0; i < cityArr.length; i++) {
            getWeather(cityArr[i]);
        }
    }
    function buildHtml() {
        var output = '';
        for (var i = 0; i < resultArr.length; i++) {
            output += '<tr><td>' +
                    resultArr[i].city + '</td><td>' +
                    resultArr[i].temperature + '</td><td>' +
                    resultArr[i].humidity + '</td></tr>';
        }
        return output;
    }
    weather();
});