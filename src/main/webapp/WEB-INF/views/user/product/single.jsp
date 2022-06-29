<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

	<title>Welcome To Shoe Shop</title>
<body>
	
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">
<img src="<c:url value="/webcontent/images/g5.jpg" />">
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3>Air Force</h3>
				<p><span class="item_price">$250</span>
				</p>
				<div class="color-quality">
					<div class="color-quality-right">
						<h5>Size :</h5>
						<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null">38</option>
								<option value="null">39</option> 
								<option value="null">40</option>					
								<option value="null">41</option>								
							</select>
					</div>
					
				</div>
				<br>
				<div class="occasion-cart">
					<div class="shoe single-item single_page_b">
						<form action="#" method="post">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="add" value="1">
							<input type="hidden" name="shoe_item" value="Air Force">
							<input type="hidden" name="amount" value="250.00">
							<input type="submit" name="submit" value="Add to cart" class="button add">

							<a href="#" data-toggle="modal" data-target="#myModal1"></a>
						</form>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //top products -->
	
</body>

</html>