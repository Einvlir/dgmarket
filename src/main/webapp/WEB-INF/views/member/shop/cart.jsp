<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

<!-- Favicon  -->
<link rel="icon" href="/resources/img/reallogo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/resources/css/core-style.css">
<link rel="stylesheet" href="/resources/style.css">
<!-- 폰트어썸 -->
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<!-- Responsive CSS -->
<link href="/resources/css/responsive.css" rel="stylesheet">
<!-- Popper js -->
<script src="/resources/js/popper.min.js"></script>
<!-- Plugins js -->
<script src="/resources/js/plugins.js"></script>
<!-- Active js -->
<script src="/resources/js/active.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- 커스텀 CSS -->
<link rel="stylesheet" href="/resources/css/style.css">
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
    href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Jua&family=Nanum+Pen+Script&family=Single+Day&display=swap"
    rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
<!--     
    font-family: 'Black Han Sans', sans-serif;
    font-family: 'Jua', sans-serif;
    font-family: 'Nanum Pen Script', cursive;
    font-family: 'Single Day', cursive; 
    font-family: 'Nanum Gothic Coding', monospace;  -->
    <title>장바구니</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/reallogo.png">
</head>
<body>
    <div id="header">헤더 올 곳</div>
    <div class="row">
        <div class="col-sm-2" ></div>
        <div class="col-sm-8">
            <div class="cart-title">장바구니</div>

            <!-- 장바구니 왼쪽 섹션 시작 -->
            <div class="row">
                <div><i class="fas fa-check-circle" style="margin-left: 30px; font-size: 25px; color: purple;"></i></div>
                <div class="col-sm-1+1/2" style="margin-left: 1%;">전체선택(1/1)</div>
                <div class="" style="color: rgb(157, 157, 157); font-weight: bold;">&nbsp;&nbsp;&nbsp;I</div>
                <div class="col-sm-1" style="padding-left: 0px;">&nbsp;&nbsp;선택삭제</div>
            </div>
            <hr id="cart-line" style="background-color: rgb(186, 186, 186); height: 1px; width: 75%;">
            <div class="row" id="cart-main">
                <div class="col-sm-9" >
                    <div class="row">
                        <div class="col-sm-2" id="cart-check">
                            <i class="fas fa-check-circle" style="margin-left: 15px; font-size: 25px; color: purple;"></i>
                            <img src="/resources/img/img1.jpg" class="img-thumbnail" id="product-thumbnail">
                        </div>
                        <div class="col-sm-3" id="cart-detail">
                            (저중량)아령+신발세트
                        </div>
                        <div class="col-sm-3" style="margin-top: 50px;">
                            <div id="cart-count"><i class="fas fa-minus" id="minus"></i>&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;<i class="fas fa-plus" id="plus"></i></div>
                        </div>
                        <div class="col-sm-3" style="margin-top: 50px; margin-left: 5%; font-size: 18px;">
                            53,000원
                        </div>
                    </div>
                </div>
            <!-- 장바구니 왼쪽 섹션 끝-->
            <!-- 장바구니 오른쪽 섹션 시작 -->            
                <div class="col-sm-3" style="border: 1px solid rgb(214, 214, 214);">
                    <div style="margin-top: 20px; font-size: 30px; height: 70px; color: rgb(126, 126, 126);">
                        <i class="fas fa-map-marker-alt" ></i>
                        배송지
                    </div>
                    <div style="height: 100px;">서울 송파구 올림픽로 300</div>
                    <div id="location"><button type="button" class="btn btn-outline-success">배송지 변경</button></div>
                    <div class="row" style="height: 140px; padding-top: 20px; margin-top: 50px; background: rgb(240, 240, 240);">
                        <div class="col-sm-7" style="font-size: 15px; line-height: 30px; padding-left: 50px; ">상품금액</div>
                        <div class="col-sm-5" style="font-size: 20px;  text-align: right;">55,000원</div>
                        <div class="col-sm-7" style="font-size: 15px; line-height: 30px; padding-left: 50px;">상품할인금액</div>
                        <div class="col-sm-5" style="font-size: 20px;  text-align: right;">-2,000원</div>
                        <div class="col-sm-7" style="font-size: 15px; line-height: 30px; padding-left: 50px;">배송비</div>
                        <div class="col-sm-5" style="font-size: 20px;  text-align: right; ">5,000원</div>
                    </div>
                    <hr style="width: 100%; padding: 0%; margin-left: 0%">
                    <div id="product-order"><button type="button" class="btn btn-success">주문하기</button></div>
                </div>
            <!-- 장바구니 오른쪽 섹션 끝-->          
            </div>
        </div>
        <div class="col-sm-2" ></div>
    </div>

    <div id="footer">푸터 올 곳</div>
</body>
</html>