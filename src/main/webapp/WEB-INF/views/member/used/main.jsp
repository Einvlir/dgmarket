<%@ page contentType="text/html;charset=UTF-8"%>
<!-- jsp로 넘어가서 curr 변수 생성 후 [더 보기] 버튼 클릭 시 used_main?curr=1 이런 식으로 해줘야 다른 곳에 이동하고 와도 내가 봤던 페이지까지 남아있을 수 있음 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>중고거래 메인</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" alt></script>

<style>
    .jumbotron {
        color: #fff;
        padding:  25px;
    }

    .row{
        padding-left: 250px;
        padding-right: 250px;
    }

    .col-xl-3{
        margin-top: 25px;
        display: none;
    }

    .card-header div{
        margin-right: 0px;
    }

    img{
        width: 100%;
        height: 250px;
        object-fit: cover;
    }

    .card{
        border: black 1px solid;

    }

    .search_container{
        width: 60%;
        height: 80px;
        margin: auto;
        margin-top: 50px;
    }

    hr{
        border: 0px;
        height: 3px;
        background: black;
    }

    input:focus, select:focus ,#search_bt:focus{
        outline: none;
    }

</style>
<script>
$(function(){
    //최초 상품 4개를 보여주기
    loadProduct();
   
    //더 보기 버튼 클릭 시 발생 이벤트
    $("#load").click(function(e){
        e.preventDefault(); //새로고침을 막아주는 함수
        loadProduct(e);
    });
});

//상품 더보기를 선택할 시 숨겨져 있던 상품 보여주기
function loadProduct(e){
    $(".col-xl-3:hidden").slice(0, 4).show();
    if($(".col-xl-3:hidden").length == 0){
        $("#load").css("display", "none");
    }
}

//찜 상태를 변경하는 함수
//매개 변수로 상품의 id를 넘겨받는다.
function setFavorites(used_product_id){

}

</script>
</head>
<body>
    <!-- 검색창 -->
    <div class="search_container" style="font-size: 20px;">
        <div class="row">
            <div class="col-md-2">
                <select name="keyword" id="" style="width: 100%; border: 0px;">
                    <option value="used_product_name">제품명</option>
                    <option value="storename">상품명</option>
                    <option value="tag">TAG</option>
                </select>
            </div>
            <div class="col-md-7">
                <input type="text" maxlength="15" style="width: 115%;
                    border-left: 0px; border-right: 0px; border-top: 0px;">
            </div>
            <div class="col-md-3">
                <button id="search_bt" style="background-color: white;
                    border: 0px; width: 100%;"><strong>search</strong></button>
            </div>
        </div>
    </div>




    <!-- 중고상품의 이미지, 정보 등을 볼 수 있는 하나의 박스 -->
    <!-- 페이징 처리와 비슷하게 한 번에 4개의 상품만을 노출 시키고 +버튼을 눌렀을 때 다음 4개의 상품을 노출 시킬 계획 -->
    <!-- cuur 같은 변수를 만들고 +버튼을 누를 때 마다 1씩 증가 시키고 새로고침을 해도 cuur은 유지되게 만들어야 함 -->


    <div class="row text-center">
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-danger" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>2012년에 산 덤벨 세트</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="data:image/jpeg;base64,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" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">25,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[헬스왕조성일]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>손목 스트랩</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="http://sjcompany.co.kr/web/product/big/201903/7d5dfa2ed3c94889b0d63b34bd3c875c.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">12,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[헬스왕조성일]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>WSF 손목 스트랩</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/700x700ex/image/retail/images/2020/02/22/18/2/c9a69c99-8b72-43b9-96f7-a6d19c962a68.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">20,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[asd11k]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>선수용 줄넘기</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://banziha.com/wp-content/uploads/2019/11/20191114180348.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">8,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[넘기왕]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
   
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-danger" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>2012년에 산 덤벨 세트</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="data:image/jpeg;base64,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" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">25,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[헬스왕조성일]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>손목 스트랩</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="http://sjcompany.co.kr/web/product/big/201903/7d5dfa2ed3c94889b0d63b34bd3c875c.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">12,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[헬스왕조성일]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>WSF 손목 스트랩</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/700x700ex/image/retail/images/2020/02/22/18/2/c9a69c99-8b72-43b9-96f7-a6d19c962a68.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">20,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[asd11k]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>선수용 줄넘기</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://banziha.com/wp-content/uploads/2019/11/20191114180348.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">8,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[넘기왕]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
   
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-danger" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>2012년에 산 덤벨 세트</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="data:image/jpeg;base64,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" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">25,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[헬스왕조성일]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>손목 스트랩</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="http://sjcompany.co.kr/web/product/big/201903/7d5dfa2ed3c94889b0d63b34bd3c875c.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">12,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[헬스왕조성일]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-danger" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>WSF 손목 스트랩</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/700x700ex/image/retail/images/2020/02/22/18/2/c9a69c99-8b72-43b9-96f7-a6d19c962a68.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">20,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[asd11k]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>선수용 줄넘기</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://banziha.com/wp-content/uploads/2019/11/20191114180348.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">8,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[넘기왕]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>       
        
        <!--하나의 상품을 나타낼 박스-->
        <div class="col-xl-3">
            <div class="card">
                <!-- 상품명이 올 곳 -->
                <div class="card-header">
                    <!-- 찜을 했냐 안했냐에 따라서 버튼의 색이 달라지고, 클릭 시 찜의 유무 바뀜 -->
                    <!-- 클릭 시 changeLike() 함수 호출 -->
                    <div class="btn-success" style="font-size: 25px; margin-bottom: 5px;" onclick="">
                    ♥
                    </div>
                    <strong>선수용 줄넘기</strong>
                </div>
                <!-- 상품 이미지가 올 곳 -->
                <img src="https://banziha.com/wp-content/uploads/2019/11/20191114180348.jpg" alt="">
                <div class="card-body">
                    <!-- 상품 가격 올 곳 -->
                    <h5 class="card-title">8,000</h5>
                    <p class="card-text">
                        <!-- 판매자 아이디 올 곳+링크는 판매자 상점으로 이동 -->
                        판매자 : <a href='#'>[넘기왕]</a>
                    </p>
                    <!-- 상품의 상세보기로 이동 -->
                    <a href="#" class="btn btn-success">상세보기</a>
                </div>
            </div>            
        </div>         
    </div>    
    <div style="width: 100%; height: 100px; padding-top: 35px;" class="text-center">
        <div class="btn btn-success center" id="load" onclick="">더보기</div>
    </div>
</body>
</html>