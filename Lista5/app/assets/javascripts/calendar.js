async function eventCalendar() {
    let data = await getFeriadosJapao();
    console.log(data);
    return $('#calendar').fullCalendar({
        events: convertDataToEvents(data)
    });
};

function clearCalendar() {
    $('#calendar').fullCalendar('delete');
    $('#calendar').html('');
};

function convertDataToEvents(data_json) {
    let events = [];
    //Getting the holidays in JSON
    let data_holidays = data_json["response"]["holidays"];
    for (let i = 0; i < data_holidays.length; i++) {
        events.push({
            id: i,
            title: data_holidays[i].name,
            start: data_holidays[i]["date"]["iso"]
        })
    }
    return events
}

function getFeriadosJapao() {
    return $.ajax(
        {
            url: "https://calendarific.com/api/v2/holidays?api_key=000cf2d6fb9c97fab702bed2f6269ed1ca499cb3&country=jp&year=2020",
            success: function (result) {
                console.log("Deu bom")
            },
            error: function (result) {
                console.log("Deu ruim")
            }
        }
    )
}

$(document).on('turbolinks:load', eventCalendar);
$(document).on('turbolinks:before-cache', clearCalendar);