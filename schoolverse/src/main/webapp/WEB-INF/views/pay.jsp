<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath"/>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pay</title>
    <link rel="stylesheet" href="${rootPath }/resources/css/pay.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>

<body>
    <aside class="pay_aside">
        <div id="edu_list">
            <div class="classes"
                data-schedule="mon_13:00,mon_14:00,mon_15:00,mon_16:00,wed_13:00,wed_14:00,wed_15:00,wed_16:00,fri_13:00,fri_14:00,fri_15:00,fri_16:00"
                data-expense="300000">
                <div class="content-section">
                    <h1 class="title">yy영어학원</h1>
                    <hr>
                    </h2>
                    <h2 class="expense">300,000원/월</h2>
                </div>
                <div class="sub">-</div>
            </div>

            <div class="classes"
                data-schedule="tue_13:00,tue_14:00,tue_15:00,tue_16:00,fri_13:00,fri_14:00,fri_15:00,fri_16:00"
                data-expense="200000">
                <div class="content-section">
                    <h1 class="title">zz영어학원</h1>
                    <hr>
                    </h2>
                    <h2 class="expense">200,000원/월</h2>
                </div>
                <div class="sub">-</div>
            </div>
            <div class="classes"
                data-schedule="mon_09:00,mon_10:00,mon_11:00,wed_09:00,wed_10:00,wed_11:00,fri_09:00,fri_10:00,fri_11:00"
                data-expense="300000">
                <div class="content-section">
                    <h1 class="title">xx수학학원</h1>
                    <hr>
                    </h2>
                    <h2 class="expense">300,000원/월</h2>
                </div>
                <div class="sub">-</div>
            </div>
            <div class="classes"
                data-schedule="mon_10:00,mon_11:00,mon_12:00,mon_13:00,tue_10:00,tue_11:00,tue_12:00,tue_13:00"
                data-expense="200000">
                <div class="content-section">
                    <h1 class="title">oo피아노학원</h1>
                    <hr>
                    </h2>
                    <h2 class="expense">200,000원/월</h2>
                </div>
                <div class="sub">-</div>
            </div>
            <div class="classes" data-schedule="mon_18:00,wed_18:00,fri_18:00,sat_18:00" data-expense="180000">
                <div class="content-section">
                    <h1 class="title">kk태권도</h1>
                    <hr>
                    <h2 class="expense">180,000원/월</h2>
                </div>
                <div class="sub">-</div>
            </div>
        </div>
        <button class="backToSchedule" onclick="location.href = './schedule.html' ">돌아가기</button>
    </aside>
    <div class="payment_wrapper">
        <div id="box">
            <div>
                <h1>총액 : 470,000원/월</h1>
            </div>
            <button onclick="location.href = './thanks.html'" class="pay-button">결제하기</button>
        </div>
    </div>
</body>
<script src="${rootPath }/resources/js/pay.js"></script>

</html>