<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Footer -->
    <footer class="p-5 d-flex justify-content-between align-items-center font-size: 0.8rem footer-green">
        <div class="row">
            <div class="">
                <div class="">
                    <ul class="list-unstyled d-flex">
                        <li>
                            <a href="/etc/companyInfo"
                                class="text-black text-decoration-none border-end border-secondary">회사소개 &nbsp;</a>
                        </li>
                        <li>
                            <a href="/etc/terms_of_use"
                                class="text-black text-decoration-none ps-2 border-end border-secondary">이용약관 &nbsp;</a>
                        </li>
                        <li>
                            <a href="/etc/privacy_policy"
                                class="text-black text-decoration-none ps-2 border-end border-secondary">개인정보처리방침
                                &nbsp;</a>
                        </li>
                        <li>
                            <a href="/notice/notice_faq" class="text-black text-decoration-none ps-2">고객센터</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <ul class="list-unstyled m-0">
                        <li class="pt-1">
                            대표번호 : 080-513-5420 (업무시간 : 09:00-18:00 월~금) 주말,
                            공휴일 휴무
                        </li>
                        <li class="pt-1">
                            <span class="pe-3">대표자 : 이동환</span>
                            <span>주소 : 서울특별시 구로동 디지털로34길 27 대륭포스트타워 3차 1106호</span>
                        </li>
                        <li class="pt-1">
                            <span>법인명 : (주)0124</span>
                            <span>사업자 등록정보 : 96-979686</span>
                        </li>
                        <li class="pt-1">
                            <span>호스팅 : (주)0124</span>
                            <span>E-MAIL : diet@gmail.com</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <img src="/images/drug_img.png" alt="logo" height="130rem">
        </div>


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
    </footer>
