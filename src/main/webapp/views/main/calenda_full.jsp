<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js" crossorigin="anonymous"></script>
	<style>

    </style>
</head>
<body>
    <div class="container" style="padding:10px">
        <div id="calendar"></div>
    </div>
    <!-- Event Modal -->
    <div class="modal fade" id="eventModal" tabindex="-1" aria-labelledby="eventModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="eventModalLabel">New Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- 이벤트 정보 입력란-->
                    <div class="mb-3">
                        <label for="inputTitle" class="form-label">Title</label>
                        <input type="text" class="form-control" id="inputTitle">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="saveEvent()">Save</button>
                </div>
            </div>
        </div>
    </div>

    <!-- JS -->


    <script>
        // 변수 선언
        var calendar;
        var event;

        // FullCalendar 초기화
        $(document).ready(function () {
            calendar = $('#calendar').fullCalendar({
                // FullCalendar 옵션 설정
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                navLinks: true,
                selectable: true,
                selectHelper: true,
                editable: true,
                eventLimit: true,

                // 이벤트 클릭 이벤트 처리
                eventClick: function (calEvent, jsEvent, view) {
                    event = calEvent;
                    $('#inputTitle').val(calEvent.title);
                    $('#eventModalLabel').text('Edit Event');
                    $('#eventModal').modal('show');
                },

                // 날짜 클릭 이벤트 처리
                dayClick: function (date, jsEvent, view) {
                    event = null;
                    $('#inputTitle').val('');
                    $('#eventModalLabel').text('New Event');
                    $('#eventModal').modal('show');
                },
            });
        });

        // 이벤트 생성 및 수정 함수 추가
        function saveEvent() {
            var title = $('#inputTitle').val();

            if (title) {
                var eventData = {
                    title: title,
                    start: event ? event.start : $('#calendar').fullCalendar('getDate'),
                    end: event ? event.end : null,
                };

                if (event) {
                    // 이벤트 수정
                    event.title = title;
                    $('#calendar').fullCalendar('updateEvent', event);
                } else {
                    // 이벤트 생성
                    $('#calendar').fullCalendar('renderEvent', eventData, true);
                }
                $('#eventModal').modal('hide');
            } else {
                alert('Title is required');
            }
        }
    </script>
</body>
</html>