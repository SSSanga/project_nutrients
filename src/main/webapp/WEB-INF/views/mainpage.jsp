<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Recommendations Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="/css/main.css" rel="stylesheet">
</head>

<body>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        .nav-link {
            color: white !important;
            font-size: 1.33em;
        }

        #dropdownMenuButton {
            background-color: green;
            color: white;
        }

        .btn-outline-secondary {
            color: white;
            border-color: white;
        }
    </style>

    <!-- header -->
    <%@ include file="/WEB-INF/views/project/header.jsp" %>

    <!-- Screen adjust functions -->
    <script>
        var zoom = 1;

        function increaseSize() {
            zoom += 0.1;
            document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
            document.body.style.zoom = zoom;
        }

        function decreaseSize() {
            zoom -= 0.1;
            document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
            document.body.style.zoom = zoom;
        }
    </script>



    <style>
        .h3,
        .btn-outline {
            color: black !important;
        }

        .btn-outline {
            border-color: black !important;
        }

        .btn-outline:active {
            color: white !important;
            background-color: green !important;
            border-color: green !important;
        }
    </style>

    <!-- Menu -->
    <div class="d-flex justify-content-center">
        <div class="container m-3">

            <form action="">
                <div class="h3 text-center">영양제 추천</div>
                <div class="row p-2">
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/administrator/livercare.html">간 기능개선</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/administrator/recovery.html">피로회복</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/administrator/eyes.html">눈 기능
                            향상</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/administrator/cholesterol.html">콜레스테롤 개선</button>
                    </div>
                </div>
            </form>

        </div>
    </div>


    <style>
        .carousel-container,
        .image-container {
            height: 50vh;
            /* Adjust this value as needed */
        }

        .carousel-container .carousel-inner,
        .image-container {
            height: 100%;
            overflow: hidden;
        }

        .carousel-container img,
        .image-container img {
            max-height: 100%;
            width: 100%;
            object-fit: contain;
        }
    </style>
    <div class="container_img">
        <div class="container pb-5"> <!-- Added padding-bottom to create space between the container and the footer -->
            <div class="row">
                <div class="col-md-8">
                    <!-- Slide -->
                    <div class="carousel-container">
                        <div id="controlsID-first" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button class="active" data-bs-slide-to="0" data-bs-target="#controlsID-first"></button>
                                <button data-bs-slide-to="1" data-bs-target="#controlsID-first"></button>
                                <button data-bs-slide-to="2" data-bs-target="#controlsID-first"></button>
                                <button data-bs-slide-to="3" data-bs-target="#controlsID-first"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="/static/images/pill_3.png" alt="">
                                </div>
                                <div class="carousel-item">
                                    <img src="/static/images/pill_4.png" alt="">
                                </div>
                                <div class="carousel-item">
                                    <img src="/static/images/lee_lutein.png" alt="">
                                </div>
                                <div class="carousel-item">
                                    <img src="/static/images/lemona.png" alt="">
                                </div>
                            </div>
                            <button data-bs-slide="prev" data-bs-target="#controlsID-first"
                                class="carousel-control-prev">
                                <span class="carousel-control-prev-icon"></span>
                            </button>
                            <button data-bs-slide="next" data-bs-target="#controlsID-first"
                                class="carousel-control-next">
                                <span class="carousel-control-next-icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <!-- Image -->
                    <div class="image-container">
                        <img src="/images/ad_img.png" alt="AD_Image" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>


    <hr>

    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>

        <!-- Code injected by live-server -->
        <script>
            // <![CDATA[  <-- For SVG support
            if ('WebSocket' in window) {
                (function () {
                    function refreshCSS() {
                        var sheets = [].slice.call(document.getElementsByTagName("link"));
                        var head = document.getElementsByTagName("head")[0];
                        for (var i = 0; i < sheets.length; ++i) {
                            var elem = sheets[i];
                            var parent = elem.parentElement || head;
                            parent.removeChild(elem);
                            var rel = elem.rel;
                            if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                                elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                            }
                            parent.appendChild(elem);
                        }
                    }
                    var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
                    var address = protocol + window.location.host + window.location.pathname + '/ws';
                    var socket = new WebSocket(address);
                    socket.onmessage = function (msg) {
                        if (msg.data == 'reload') window.location.reload();
                        else if (msg.data == 'refreshcss') refreshCSS();
                    };
                    if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                        console.log('Live reload enabled.');
                        sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
                    }
                })();
            }
            else {
                console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
            }

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    </footer>

    <!-- <script src="../js/carinforwithfunction.js"></script> -->
    <!-- <script src="../js/carinforwithrest.js"></script> -->
</body>

</html>