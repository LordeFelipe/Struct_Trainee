$(document).on('turbolinks:load', async function () {
    let ctx = document.getElementById('myChart').getContext('2d');
    let covid_data = await getCovidData();
    let myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: getCountryNames(covid_data.data),
            datasets: [{
                label: 'Número de casos de covid',
                data: getCountryCases(covid_data.data),
                backgroundColor: CanvasGradient
            }]
        }
    });
});

function getCovidData() {
    return $.ajax(
        {
            url: "https://covid19-brazil-api.now.sh/api/report/v1/countries",
            dataType: "json",
        }
    )
}

function getCountryCases(data_json) {
    let data = [];
    for (let i=0; i < data_json.length; i++) {
        data.push(data_json[i].confirmed)
    }
    data.sort(function(a, b) {
        return a - b;
    }).reverse();
    console.log(data.slice(0,5));
    return data.slice(0,5)
}

function getCountryNames(data_json) {
    let dataConfirmed = [];
    let dataNames [];
    for (let i=0; i < data_json.length; i++) {
        dataConfirmed.push(data_json[i].confirmed)
    }
    for (let i=0; i < data_json.length; i++) {
        dataNames.push(data_json[i].country)
    }
    console.log(data.slice(0,5));
    return data.slice(0,5)
}