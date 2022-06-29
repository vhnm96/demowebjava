<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Welcome To Shoe Shop</title>

<body>

	<!-- top Products -->
	
		<div class="shop_inner_inf">
			<div class="privacy about">
				<h3>Chec<span>kout</span></h3>

				<div class="checkout-right">
					<h4>Your shopping cart contains: <span>1 Products</span></h4>
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>SL No.</th>
								<th>Product</th>
								<th>Size</th>
								<th>Product Name</th>

								<th>Price</th>
								<th>Remove</th>
							</tr>
						</thead>
						
						<c:forEach var="item" items="${ product }" varStatus="loop">
						
						<tbody>
							<tr class="rem1">
								<td class="invert">${ item.id_color }</td>
								<td class="invert-image"><a href="single"><img src="<c:url value="/webcontent/images/${ item.img }" />" alt=" " class="img-responsive"></a></td>
								<td class="invert">
									<div class="quantity">
										<div class="quantity-select">
											<select  style="padding: 0.5em 1em 0.5em 1em;">
																							<option>38</option>
																							<option>39</option>
																							<option>40</option>
																							<option>41</option>
																							<option>42</option>
							
																					</select>
										</div>
									</div>
								</td>
								<td class="invert">${ item.ten_model }</td>

								<td class="invert">${ item.gia }</td>
								<td class="invert">
									<div class="rem">
										<div class="close1"> </div>
									</div>

								</td>
							</tr>
							
						</tbody>
						
						</c:forEach>
						
					</table>
				</div>
				<div class="checkout-left">
					<div class="col-md-4 checkout-left-basket">
						<h4><a href="shop">Continue to basket </a></h4>
						<ul>
							<li>Đơn hàng <i>-</i> <span>$250.00 </span></li>
							<li>Dịch vụ <i>-</i> <span>$0.00</span></li>
							<li>Tổng tiền <i>-</i> <span></span></li>
						</ul>
					</div>
					<div class="col-md-8 address_form">
						
						<form action="payment.jsp" method="post" class="creditly-card-form agileinfo_form">
							<section class="creditly-wrapper wrapper">
								<div class="information-wrapper">
									<div class="first-row form-group">
										<div class="controls">
											<label class="control-label">Họ và tên: </label>
											<input class="billing-address-name form-control" type="text" name="name" placeholder="Nguyễn Văn A">
										</div>
										<div class="card_number_grids">
											<div class="card_number_grid_left">
												<div class="controls">
													<label class="control-label">Số điện thoại:</label>
													<input class="form-control" type="text" placeholder="+84 ">
												</div>
											</div>
											<div class="card_number_grid_right">
												<div class="controls">
													<label class="control-label">Địa chỉ: </label>
													<input class="form-control" type="text" placeholder="Thành Phố Hồ Chí Minh">
												</div>
											</div>
											<div class="clear"> </div>
										</div>
										
										<div class="controls">
											<label class="control-label">Đơn vị giao hàng: </label>
											<select class="form-control option-w3ls" style="padding: 0.5em 1em 0.5em 1em;">
																							<option>VN Post</option>
																							<option>Giao hàng tiết kiệm</option>
																							<option>Viettel Post</option>
																							<option>Giao hàng nhanh</option>
																							<option>J&T</option>
							
																					</select>
										</div>
									</div>
									
								</div>
							</section>
						</form>
						<div class="checkout-right-basket">
							<a href="https://www.paypal.com/vn/webapps/mpp/home">Make a Payment </a>
						</div>
					</div>

					<div class="clearfix"> </div>


					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		
		

</body>

</html>