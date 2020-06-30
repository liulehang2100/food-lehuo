//搜索按钮

var nav_ul = document.getElementsByClassName("nav-ul")[0];
var nav_as = nav_ul.getElementsByTagName("a");
var nav_lis = nav_ul.getElementsByTagName("li");

//搜索栏 ，按钮
var search = document.getElementsByClassName("search")[0];//search 按钮
var search_box = document.getElementsByClassName("search-box")[0];
var sbox_li1 = search_box.getElementsByClassName("sbox-li1")[0];
var close_button = document.getElementsByClassName("close-button")[0];
//购物车的三角
var triangle = document.getElementsByClassName("triangle")[0];
//隐藏菜单
var menu_open = document.getElementsByClassName("menu-open")[0];
var menu = document.getElementsByClassName("menu")[0];


//底部导航栏
var addhao = document.getElementsByClassName("addhao");
var hi_ul = document.getElementsByClassName("hi-ul");


//绑定按钮的 点击事件

search.addEventListener("click", function (event) {
    event.preventDefault();
    var time = 0.35;
    for (var i = 1; i < nav_as.length; i++) {
        nav_as[i].style.opacity = "0";
        nav_as[i].style.height = "30px";
        nav_as[i].style.width = "34px";
        nav_as[i].style.transitionDelay = time + "s"
        time -= 0.05;
    }
    sbox_li1.style.animation = "search-appear 0.3s linear";

    //将 display的变化延后，因为display 会影响 transition的执行
    setTimeout(function () {
        for (var i = 1; i < nav_lis.length; i++) {
            nav_lis[i].style.display = "none";

        }
        console.log(2);
    }, 1000);
    console.log(1);
    setTimeout(function () {
        search_box.style.display = "block";
    }, 500)


    close_button.style.display = "block";
}, false);




close_button.addEventListener("click", function () {
    this.style.display = "none";
    search_box.style.display = "none";
    for (var i = 1; i < nav_lis.length; i++) {
        nav_lis[i].style.display = "block";
    }
    var time = 0;

    setTimeout(function () {
        for (var i = 1; i < nav_as.length; i++) {
            nav_as[i].style.opacity = "1";
            nav_as[i].style.width = "48px";
            nav_as[i].style.height = "44px";
            nav_as[i].style.transitionDelay = time + "s"
            time += 0.05;

        }
    }, 200);


}, false)

menu_open.addEventListener("click", function () {

    if (menu.style.height == "0px") {
        this.style.backgroundImage = "url(image/close.svg)";//注意  路径改变
        menu.style.height = "100%";
    }
    else if ((menu.style.height == "100%")) {
        this.style.backgroundImage = "url(image/menu.svg)";
        menu.style.height = "0";
    }



}, false)


//循环给 每一个   add号 按钮添加点击事件
for (var i = 0; i < addhao.length; i++) {
    (function (i) {



        addhao[i].addEventListener("click", function () {


            if (hi_ul[i].style.height == "0px") {
                this.style.transform = "rotate(45deg)";
             
                    hi_ul[i].style.height = "200px";
             
            }

            else if(hi_ul[i].style.height != "0px")
            {
                this.style.transform = "rotate(0)";
                hi_ul[i].style.height = "0px";
                
            }

        }, false)

    } (i))
            
    }










//绑定两个搜索框的输入事件
var search_input = document.getElementsByClassName("search-input")[0];
    search_input.addEventListener("focus", function () {
        if (this.getAttribute("value") == "搜索 apple.com") {
            this.setAttribute("value", "");
        }
    }, false);

    search_input.addEventListener("blur", function () {
        if (this.getAttribute("value") == "") {
            this.setAttribute("value", "搜索 apple.com");
        }
    }, false)




    var menu_search = document.getElementsByClassName("menu-search")[0];
    menu_search.addEventListener("focus", function () {
        if (this.getAttribute("value") == "搜索 apple.com") {
            this.setAttribute("value", "");
        }
    }, false);

    search_input.addEventListener("blur", function () {
        if (this.getAttribute("value") == "") {
            this.setAttribute("value", "搜索 apple.com");
        }
    }, false)



    var bag = document.getElementsByClassName("bag")[0];
    //处理 屏幕变化引起的 媒体查询 问题

    window.onresize = function () {
        //防止 搜索框在小于818的界面出现
        if (window.innerWidth <= 818) {
            if (search_box.style.display == "block") {
                search_box.style.display = "none";
                close_button.style.display = "none";
            }
            if (nav_lis[1].style.display == "block") {
                for (var i = 1; i < nav_lis.length - 1; i++) {
                    nav_lis[i].style.display = "none";
                }
            }
            triangle.style.left = "unset";
            triangle.style.right = "15px";
        }

        //解决在 点关闭开关之前 缩小到818以下，导航栏无法恢复的问题
        if (window.innerWidth >= 818) {
            if (search_box.style.display == "block" && nav_lis[1].style.display == "block") {
                for (var i = 1; i < nav_lis.length; i++) {
                    nav_lis[i].style.display = "none";
                }
            }


            if (search_box.style.display == "none" && nav_lis[1].style.display == "none") {
                for (var i = 1; i < nav_lis.length; i++) {
                    nav_lis[i].style.display = "block";
                    nav_as[i].style.opacity = "1";
                    nav_as[i].style.width = "48px";
                    nav_as[i].style.height = "44px";
                }
            }

            x = bag.offsetLeft;

            triangle.style.left = x + 12 + "px";
        }


    }
    var x = bag.offsetLeft;

    var shopping_car = document.getElementsByClassName("shopping-car")[0];
    bag.addEventListener("click", function (event) {
        event.preventDefault();
        if (shopping_car.style.display == "none") {
            shopping_car.style.display = "block";
            triangle.style.display = "block";
        }
        else if (shopping_car.style.display == "block") {
            shopping_car.style.display = "none";
            triangle.style.display = "none";
        }

    }, false)


