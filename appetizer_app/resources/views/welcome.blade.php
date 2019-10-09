<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Appetiser App</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="container w-100 p-3">
            <div class="card">
                <div class="card-header">
                    <h5 class="m-0"><strong class="">Calendar</strong></h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-5">
                            <form id="calendarForm" action="/submit" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="event">Event</label>
                                    <input type="text" name="event" id="event" class="form-control" placeholder="Input event here" required="true">
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label for="dateFrom">From</label>
                                        <input type="date" name="dateFrom" id="dateFrom" class="form-control" required="true" min="2019-10-01">
                                    </div>
                                    <div class="col-lg-6">
                                        <label for="dateTo">To</label>
                                        <input type="date" name="dateTo" id="dateTo" class="form-control" required="true">
                                    </div>
                                </div>
                                <div class="container mt-3 p-0">
                                    <div class="form-group mb-0">
                                        <input type="checkbox" name="1" value="1" id="sunday" class="checkbox">
                                        <label class="mr-2" for="sunday">Sun</label>
                                        <input type="checkbox" name="2" value="2" id="monday" class="checkbox">
                                        <label class="mr-2"  for="monday">Mon</label>
                                        <input type="checkbox" name="3" value="3" id="tuesday" class="checkbox">
                                        <label class="mr-2"  for="tuesday">Tue</label>
                                        <input type="checkbox" name="4" value="4" id="wednesday" class="checkbox">
                                        <label class="mr-2"  for="wednesday">Wed</label>
                                        <input type="checkbox" name="5" value="5" id="thursday" class="checkbox">
                                        <label class="mr-2"  for="thursday">Thu</label>
                                        <input type="checkbox" name="6" value="6" id="friday" class="checkbox">
                                        <label class="mr-2"  for="friday">Fri</label>
                                        <input type="checkbox" name="7" value="7" id="saturday" class="checkbox">
                                        <label class="mr-2"  for="saturday">Sat</label>
                                     </div>
                                </div>
                            </form>

                            <div class="container p-0" id="calendarButton">
                                <button type="button" id="submitCalendarButton" class="btn btn-primary">Submit</button>
                                <span id="message"></span>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <h3><strong>October 2019</strong></h3>
                            <table class="table" id="tableDates">
                                @foreach($dates as $indiv_date)
                                    <tr class="{{$indiv_date->highlighted == 1 ? "bg-secondary text-white" : ""}}">
                                        <td width="10">{{$indiv_date->calendar_date}}</td>
                                        <td width="150">{{$indiv_date->day->name}}</td>
                                        <td> {{ $indiv_date->calendar_event }} </td>
                                    </tr>
                                @endforeach
                                
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <script type="text/javascript">

            let days = [];

            document.querySelectorAll(".checkbox").forEach((e) => {
                e.addEventListener("change", function() {
                    if(e.checked) {
                        days.push(e.value);
                    } else {
                        days.splice(days.indexOf(e.value), 1);
                    }
                });
            });


            document.getElementById("submitCalendarButton").addEventListener("click", function() {
                // console.log(document.querySelector("#calendarForm"))
                document.getElementById("submitCalendarButton").classList.add("spinner-border", "text-primary");
                document.getElementById("submitCalendarButton").innerHTML = "";
                let data = new FormData;

                let dateFrom = new Date(document.getElementById("dateFrom").value)
                let dateTo = new Date(document.getElementById("dateTo").value)

                data.append("event", document.getElementById("event").value);
                data.append("dateFrom", dateFrom.getDate());
                data.append("dateTo", dateTo.getDate());
                data.append("days", [days]);
                data.append("_token", "{{csrf_token()}}")

                fetch("/submit", {
                    method: "POST",
                    body: data
                }).then(function(response) {
                    return response.json();
                }).then(function(result) {
                    let day_name = "";
                    document.getElementById("tableDates").innerHTML = "";
                    result.forEach((e) => {
                        // console.log(e)

                        if(e.day_id == 1) {
                            day_name = "Sunday";
                        } else if (e.day_id == 2) {
                            day_name = "Monday";
                        } else if (e.day_id == 3) {
                            day_name = "Tuesday";
                        } else if (e.day_id == 4) {
                            day_name = "Wednesday";
                        } else if (e.day_id == 5) {
                            day_name = "Thursday";
                        } else if (e.day_id == 6) {
                            day_name = "Friday";
                        } else if (e.day_id == 7) {
                            day_name = "Saturday";
                        }


                        document.getElementById("tableDates").innerHTML += `

                            <tr class="${e.highlighted ? "bg-secondary text-white" : ""}">
                                <td width="10">${e.calendar_date}</td>
                                <td width="150">
                                   ${day_name}
                                </td>
                                <td> ${e.calendar_event ? e.calendar_event : ""} </td>
                            </tr>

                        `

                    });

                    document.getElementById("submitCalendarButton").classList.remove("spinner-border", "text-primary");
                    document.getElementById("submitCalendarButton").innerHTML = "Submit";
                });

            });
        </script>
    </body>
</html>
