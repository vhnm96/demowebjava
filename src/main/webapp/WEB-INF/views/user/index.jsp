<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Welcome To Shoe Shop</title>
<body>
<%-- <h1>${menu.size()}</h1> --%>
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			
			<!-- product left -->
			<div class="side-bar col-md-3">
				<div class="search-hotel">
					<h3 class="agileits-sear-head">Search Here..</h3>
					<form action="#" method="post">
						<input type="search" placeholder="Product name..." name="search" required="">
						<input type="submit" value=" ">
					</form>
				</div>
			</div>
			<!-- //product left -->
			<!-- product right -->
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">
					<div class="col-md-6 shop_left">
						<img src="<c:url value="/webcontent/images/banner3.jpg" />" alt="">
						<h6>40% off</h6>
					</div>
					<div class="col-md-6 shop_right">
						<img src="<c:url value="/webcontent/images/banner2.jpg" />" alt="">
						<h6>50% off</h6>
					</div>
					<div class="clearfix"></div>
					<!-- product-sec1 -->
					<div class="product-sec1">
						<!--/mens-->
						
						
						<c:forEach var="item" items="${ product }" varStatus="loop">						
						<div class="col-md-4 product-men">
							<div class="product-shoe-info shoe">
								<div class="men-pro-item">
									<div class="men-thumb-item">
										<img src="<c:url value="/webcontent/images/${item.img }" />" alt="">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
									</div>
									<div class="item-info-product">
										<h4>
											<a href="single">${item.ten_model } </a>
										</h4>
										<div class="info-product-price">
											<div class="grid_meta">
												<div class="product_price">
													<div class="grid-price ">
														<span class="money ">${item.gia }</span>
													</div>
												</div>
												
											</div>
											<div class="shoe single-item hvr-outline-out">
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="add" value="1">
													<input type="hidden" name="shoe_item" value="${item.ten_model }">
													<input type="hidden" name="amount" value="${item.gia }">
													<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

													<a href="#" data-toggle="modal" data-target="#myModal1"></a>
												</form>

											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						
					</div>

					<!-- //product-sec1 -->
					<div class="col-md-6 shop_left shp">
						<img src="<c:url value="/webcontent/images/banner4.jpg" />" alt="">
						<h6>21% off</h6>
					</div>
					<div class="col-md-6 shop_right shp">
						<img src="<c:url value="/webcontent/images/banner1.jpg" />" alt="">
						<h6>31% off</h6>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

</body>