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

    <nav class="navbar navbar-expand justify-content-between">
        <!-- Brand image -->
        <div class="navbar-brand justify-content-center">
            <a href="./main.html">
                <img src="./images/drug_img.jpg" alt="" width="200" height="150">
            </a>
        </div>

        <!-- Search bar -->
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search"
                style="font-size: 20px;">
            <button class="btn btn-outline-success" type="submit" formaction="./nutrientlist/searchresult.html"
                style="font-size: 20px; background-color: white;"><i class="fas fa-search"></i></button>
        </form>

        <!-- Navigation Links -->
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="./administrator/about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./administrator/wholelist.html">List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./loginlist/reviews.html">Reviews</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./loginlist/contacts.html">Contacts</a>
                </li>
            </ul>
        </div>

        <!-- User management dropdown -->
        <div class="d-flex align-items-center">
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
                    aria-expanded="false" style="font-size: 20px;">
                    회원관리
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="./loginlist/mypage.html" style="font-size: 20px;">마이페이지</a></li>
                    <li><a class="dropdown-item" href="./loginlist/login.html" style="font-size: 20px;">로그인</a></li>
                    <li><a class="dropdown-item" href="./loginlist/signup.html" style="font-size: 20px;">회원가입</a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="./main.html" style="font-size: 20px;">로그아웃</a></li>
                </ul>
            </div>

            <!-- Screen adjust buttons -->
            <span id="zoom-display" class="mx-2">100%</span>
            <button class="btn btn-outline-secondary mx-2" onclick="increaseSize()" style="font-size: 20px;">+</button>
            <button class="btn btn-outline-secondary" onclick="decreaseSize()" style="font-size: 20px;">-</button>
        </div>
    </nav>

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
