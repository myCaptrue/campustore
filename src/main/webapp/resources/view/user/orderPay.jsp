<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
		request.getServerPort() + path + "/";	
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>确认订单-CampusStore</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/user/orderConfirm.css">

</head>
<body>
	<%--头部导航 --%>
	<div class="head">
		<div class="head-con">
			<ul>
				<li><a href="user/usercenter?page.pagenum=0&page.limitnum=8&userInfo.id=<s:property value="#session.userInfo.id"/>">个人中心</a></li>
				<li><a href="homepage.jsp">CampusStore主页</a></li>
				<li><a href="">账号设置</a></li>
			</ul>
		</div>
	</div>	
	
	<%--主体 --%>
	<div class="confirmorder-body">
		<div class="body-con">
			<div class="tag-tips">
				CampusStore收银台:<font style="color:#3F3F3F;">
					<s:property value="#session.userInfo.account"/>
					(<s:property value="#session.userInfo.phone"/>)
				</font>
			</div>
			<div class="tag-order">
				订单详情：
			</div>
			<div class="order-details">
				<form action="" method="post">
				<table >
						<tr class="order-header">
							<td width="400px;">宝贝</td>
							<td width="100px;">单价</td>
							<td width="100px;">数量</td>
							<td width="150px;">金额</td>
							<td width="300px;">支付方式</td>
						</tr>
						<tr>
							<td id=""><a href="commodity/queryOne?commodity.id=<s:property value="#session.order.cid"/>&page.pagenum=0&page.limitnum=6&page.order=40">
									<s:property value="#session.commodity.cname"/>
							</a></td>
							<td style="color: #ff00ff;">￥<s:property value="#session.commodity.priceout"/></td>
							<td><span ><s:property value="#session.order.ccount"/></span></td>
							<td style="color: #ff00ff;">￥<s:property value="%{#session.order.ccount * #session.commodity.priceout}"/></td>
							<td >
								<select id="order-payment">
									<option>请选择支付方式</option>
									<option>现金支付</option>
									<option>微信支付</option>
									<option>支付宝支付</option>
								</select>
							</td>
						</tr>
						<tr class="msg-payment" align="center">
							<td colspan="5" class="msg-payment-tips">
								<div>请选择一种支付方式!</div>
							</td>
						</tr>
						<tr class="order-payment-img" align="center">
							<td colspan="5" >
								<img alt="Payment" src="">						
							</td>
						</tr>
						<tr class="order-footer" align="center">
							<td colspan="5" align="center">
								<button type="submit" class="order-submit" >提交</button>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
								<button type="button" class="order-submit" id="order-cancel">取消</button>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="5">
								<input type="text" id="orderid" value="<s:property value="#session.order.id" />" />
							</td>
						</tr>
				</table>		
				</form>
			</div>
		</div>
	</div>
	
	<%--网页底部 --%>	
	<div class="footer">
		<div class="footer-con">
			<div class="footer-nav">
				<ul>
					<li>联系我们</li>
					<li>商业合作</li>
					<li>关于CampusStore</li>
				</ul>
			</div>
			<div class="footer-contact">
				<ul>
					<li>邮箱：rede.lu.5945@gmail.com</li>
					<li>电话:18772102285</li>
				</ul>
			</div>
			<div class="footer-business">
				<ul>
					<li><a href="view/common/campusstorejoinin.jsp">>加入CampusStore</a></li>
					<li><a href="view/common/campusstorefriends.jsp">>成为CampusStore的合作伙伴</a></li>
					<li><a href="view/common/campusstoresponsor.jsp">>赞助CampusStore</a></li>
					<li><a href="view/common/campusstorebusiness.jsp">>在CampusStore上投放广告</a></li>
				</ul>
			</div>
			<div class="footer-about">
				<ul>
					<li><a href="view/common/campusstoreinfo.jsp">>CampusStore信息</a></li>
					<li><a href="view/common/campusstorenews.jsp">>CampusStore新闻</a></li>
					<li><a href="view/common/campusstoreintroduction.jsp">>CampusStore新手入门</a></li>
					<li><a href="view/common/campusstorerecruit.jsp">>CampusStore工作机会</a></li>
				</ul>
			</div>
			<div class="footer-info">
				<ul>
					<li>Copyright © 2017 CampusStore 版权所有</li>
					<li>强强科技  版权所有 粤ICP备170XXXXX号</li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/user/orderPay.js"></script>
</html>