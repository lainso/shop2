<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>网络商城</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygxin.css"/>
</head>
<body><!------------------------------head------------------------------>
<div class="head ding">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top"><h1 class="fl"><a href="indexServlet"><img src="img/logo.png"/></a></h1>
            <div class="fr clearfix" id="top1"><p class="fl">
            </p>
                <form action="searchProductServlet" method="post" class="fl"><input required type="text" name="key" placeholder="                                                           热门搜索：康师傅"/><input
                        type="submit" value=""/></form>
                <div class="btn fl clearfix"><a href="mygxin.jsp"><img src="img/grzx.png"/></a><a href="#" class="er1"><img
                        src="img/ewm.png"/></a><a href="cart.jsp"><img src="img/gwc.png"/></a>
                    <p><a href="#"><img src="img/smewm.png"/></a></p></div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="indexServlet">首页</a></li>
            <c:forEach var="f" items="${flist}">
                <li><a href="selectProductList?fid=${f.category_id}">${f.category_name}</a>
                    <div class="sList2">
                        <div class="clearfix">
                            <c:forEach var="c" items="${clist}">
                                <c:if test="${f.category_id == c.category_parentid}">
                                    <a href="selectProductList?cid=${c.category_id}">${c.category_name}</a>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
</div><!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix"><a href="#" class="fl">首页</a><span>/</span><a
            href="#">个人中心</a><span>/</span><a href="#" class="on">地址管理</a></div>
</div><!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3><a href="#"><img src="${pageContext.request.contextPath}/upload/user/${user.user_photo}" style="width: 92px; border-radius: 45px;"/></a>
                <p class="clearfix"><span class="fl">[${user.user_name}]</span><span>[<a href="logoutServlet">退出登录</a>]</span></p></h3>
            <div><h4>我的交易</h4>
                <ul>
                    <li><a href="toCartServlet">我的购物车</a></li>
                    <li><a href="${pageContext.request.contextPath}/toMyOrderListServlet">我的订单</a></li>
                    <li><a href="${pageContext.request.contextPath}/toMyCommentListServlet">评价晒单</a></li>
                </ul>
                <h4>个人中心</h4>
                <ul>
                    <li><a href="toUserInfoServlet">我的中心</a></li>
                    <li class="on"><a href="toMyAddressListServlet">地址管理</a></li>
                </ul>
                <h4>账户管理</h4>
                <ul>
                    <li><a href="toMyInfoServlet">个人信息</a></li>

                </ul>
            </div>
        </div>
        <div class="you fl"><h2>收货地址</h2>
            <div class="add">
                <div id="addxad"><a href="#2" ><img src="img/jia.png"/></a><span>添加新地址</span></div>
                <c:forEach var="a" items="${addresses}" varStatus="s">
                    <div id="dizhi"><p>${a.user_name}</p>
                        <p>${a.user_phone}</p>
                        <p>${a.user_address}</p>
                        <p>&emsp;</p>
                        <p class="addp"><a href="delAddressServlet?aid=${a.address_id}" id="deladd">删除</a></p>
                    </div>
                </c:forEach>
            </div>
        </div>


    </div>
</div><!--编辑弹框--><!--遮罩-->
<div class="mask"></div>
<div class="adddz">
    <form action="${pageContext.request.contextPath}/addAddressServlet" method="post">
        <input name="name" required type="text" placeholder="姓名" class="on"/><input name="phone" required type="text" placeholder="手机号"/>
        <textarea name="address" required rows="" cols="" placeholder="详细地址"></textarea>
        <div class="bc"><input type="submit" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div>
<div class="readd">
    <form action="#" method="get"><input type="text" class="on" value="六六六"/><input type="text" value="157****0022"/>
        <div class="city"><select name="">
            <option value="省份/自治区">广东省</option>
        </select><select>
            <option value="城市/地区">广州市</option>
        </select><select>
            <option value="区/县">海珠区</option>
        </select><select>
            <option value="配送区域">仲恺路</option>
        </select></div>
        <textarea name="" rows="" cols="" placeholder="详细地址">仲恺农业工程学院</textarea><input type="text" placeholder="邮政编码"
                                                                                    value="063000"/>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div><!--返回顶部-->
<div class="gotop"><a href="toCartServlet">
    <dl>
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="toUserInfoServlet">
    <dl>
        <dt><img src="img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>888-888-8888</p></div><!--footer-->
<div class="footer">
    <p class="dibu">电子商城&copy;2023-2024版权所有 信管201<br/>
        04林沛彪 05丘展鹏 06周俊龙 12 凌业勤</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>