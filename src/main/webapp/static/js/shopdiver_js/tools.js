
//圣杯模式下的 继承
var inherit = (function () {
   var F = function () { };
   return function (Target, Origin) {
      F.prototype = Origin.prototype;
      Target.prototype = new F();
      Target.prototype.constructor = Target;
      Target.prototype.uber = Origin.prototype;
   }
}());


function type(e) {
   var result = typeof (e);
   var Str = {
      "[object Array]": "array",
      "[object Object]": "object",
      "[object Number]": "number object",
      "[object String]": "string object",
      "[object Boolean]": "boolean object"
   }

   if (e == null) {
      return "null";
   }
   else if (result == "object") {
      var result_ob = Object.prototype.toString.call(e);
      return Str[result_ob];
   }
   else//包含  基础数据类型和 function
   {
      return result;
   }

}




//对象克隆
function clone(Tar, Ori) {
   var Tar = Tar || {};//验证 Tar 的没有传入
   var toStr = Object.prototype.toString;
   var sOA = "[object Array]";
   for (var prop in Ori) {
      if (Ori.hasOwnProperty(prop)) {

         if (Ori[prop] != null && typeof (Ori[prop]) == "object") {
            if (toStr.call(Ori[prop]) == sOA)//该属性是一个数组
            {
               Tar[prop] = [];
            }
            else {
               Tar[prop] = {};
            }
            clone(Tar[prop], Ori[prop]);
         }
         else {
            Tar[prop] = Ori[prop];
         }
      }
   }
   return Tar;
}


//返回第n个夫元素节点
function getNParentElement(e,n){
   var need=e;
   for(var i=0;need&&i<n;i++)//防止 获取null的父节点是报错
   {
      need=need.parentElement;
   }
   return need;
};

//取得 指定元素的指定兄弟节点
//关键：向低版本浏览器的兼容性
//当 元素的后面没有节点是，nextSibling 为 null，则访问nodeType属性式会报错
//对应位置没有 节点 返回null
function getSibling(e, n) {
   while (e && n) {
       if (n > 0) {
           if (e.nextElementSibling)
               e = e.nextElementSibling;
           else {
               for (e=e.nextSibling; e && e.nodeType != 1; e = e.nextSibling) {
               }
           }
           n--;
       }
       else {
           if (e.previousElementSibling)
               e = e.previousElementSibling;
           else {
               for (e=e.previousSibling; e && e.nodeType != 1; e = e.previousSibling) {
               }
           }
           n++;
       }
   }
   return e;
}

//实现  insertAfter
var h3 = document.getElementsByTagName("h3")[0];
var div = document.createElement("div");
div.setAttribute("class", "nihao");

Element.prototype.insertAfter = function (e, tar) {
    var child = this.childNodes;
    var len = child.length;
    if (child[len - 1] == tar)//目标节点就是 父节点的最后一个 直接添加在 父节点上
    {
        this.append(e);
    }
    else {
        this.insertBefore(e, tar.nextSibling);//放在tar的后一个节点之前

    }
};


//获取滚动条滚动距离

function getScrollOffset()
    {
        if(window.pageXOffset)
        {
            return {
                x:window.pageXOffset,
                y:window.pageYOffset
            }
        }
        else{
            return {
                x:document.body.scrollLeft+document.documentElement.scrollLeft,
                y:document.body.scrollTop+document.documentElement.scrollTop
            }
        }
    }


    //获取可视窗口的大小，返回 带有值的对象
    function getViewportOffset()
    {
        if(window.innerWidth){
            return{
                w:window.innerWidth,
                h:window.innerHeight
            }
        }
        else{
            if(document.compatMode==="BackCompat")
            {
                return {
                    w:document.body.clientWidth,
                    h:document.body.clientHeight
                }
            }
            else{
                return {
                    w:document.documentElement.clientWidth,
                    h:document.documentElement.clientHeight
                }
            }
        }
    }

//获取 样式
    function getStyle(e,prop)
{
    if(window.getComputedStyle)
    {
        return window.getComputedStyle(e,null)[prop];
    }
    else{
        return e.currentStyle[prop];
    }

}


//增加事件处理
function addEvent(e,type,handle)
   {
       if(e.addEventListener)
       {
           e.addEventListener(type,handle,false);
       }
       else if(e.attatchEvent)
       {
           e.addEvent("on"+type,function(){
               handle.call(e);
           },false); 
       }
       else{
               e["on"+type]=handle;
           }
   }

   //解除冒泡
   function stopBubble(event) {
    if (event.stopPropagation())
        event.stopPropagation();
    else
        event.cancelBubble = true;
}
//阻止默认事件
function cancelEvent(event)
    {
        if(event.preventDefault)
        {
            event.preventDefault();
        }
        else{
            event.returnValue=false;
        }
    }


    //异步加载 js
    function loadScript(url,callback)
    {
        var script=document.createElement("script");
        script.type="text/javascript";
        if(script.readyState)//ie
        {
            script.onreadystatechange=function(){
                if(sript.readyState=='complete'||
                script.readyState=='loaded')
                callback();
            }
        }
        else
        {
            scripe.onload=function(){
                callback();
            }
        }
        script.src=url;
        document.head.appendChild(script);
    }

function addClass(dom,classname)
{
    if(dom.className="")
    dom.className=classname;
    else{
        dom.className+=" "+classname
    }

}


function remove(dom,classname)
{
    
}



