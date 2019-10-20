<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						<marquee>Free shipping for standard order over $100</marquee>
					</div>

					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25" >
							Help & FAQs
						</a>
						<a href="#" class="flex-c-m trans-04 p-lr-25" data-toggle="modal" data-target="#myModal1">
							Đăng ký
							<div class="modal fade" id="myModal1" role="dialog" style="z-index: 9999">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"></button>
											<h4 class="modal-title">Đăng ký</h4>
										</div>
										<div class="modal-body">
											<form action="" style="font-size: 15px">
												<div class="form-group">
													<label for="email">Họ tên:</label>
													<input type="email" class="form-control" id="email">
												</div>
												<div class="form-group">
													<label for="email">Tên đăng nhập:</label>
													<input type="email" class="form-control" id="email">
												</div>
												<div class="form-group">
													<label for="pwd">Mật khẩu:</label>
													<input type="password" class="form-control" id="pwd">
												</div>
												<div class="form-group">
													<label for="pwd">Nhập lại mật khẩu:</label>
													<input type="password" class="form-control" id="pwd">
												</div>

												<div class="form-group">
													<div class="row">
														<label for="pwd" style="margin-left: 20px">Giới tính:</label>
														<div class="col-sm-10" style="margin-left: 20px">
															<div class="form-check">
																<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
																<label class="form-check-label" for="gridRadios1">
																	Nam
																</label>
															</div>
															<div class="form-check">
																<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
																<label class="form-check-label" for="gridRadios2">
																	Nữ
																</label>
															</div>
														</div>
													</div>
													
												</div>
												<div class="form-group">
													<label for="email">Địa chỉ:</label>
													<input type="email" class="form-control" id="email">
												</div>
												<div class="form-group">
													<label for="email">Email:</label>
													<input type="email" class="form-control" id="email">
												</div>
												<div class="form-group">
													<label for="email">Số điện thoại:</label>
													<input type="email" class="form-control" id="email">
												</div>
												<button class="btn btn-info" style="margin-left: 42%">Submit</button>
											</form>
										</div>
									</div>

								</div>
							</div>
						</a>
						<a href="#" class="flex-c-m trans-04 p-lr-25" data-toggle="modal" data-target="#myModal2" >
							Đăng nhập
							<div class="modal fade" id="myModal2" role="dialog" style="z-index: 9999">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"></button>
											<h4 class="modal-title">Đăng nhập</h4>
										</div>
										<div class="modal-body">
											<form action="">
												<div class="form-group">
													<label for="email">Email address:</label>
													<input type="email" class="form-control" id="email">
												</div>
												<div class="form-group">
													<label for="pwd">Password:</label>
													<input type="password" class="form-control" id="pwd">
												</div>
												<div class="checkbox">
													<label><input type="checkbox"> Remember me</label>
												</div>
												<button class="btn btn-info" style="margin-left: 42%">Submit</button>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>
							</div>

						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							EN
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							USD
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
						
					<!-- Logo desktop -->		
					<a href="index.html" class="logo">
						<img src="resources/web/images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="index.html">Trang chủ</a>
							</li>
							<li>
								<a href="product.html">Sản phẩm</a>
							</li>

							<li class="label1" data-label1="hot">
								<a href="shoping-cart.html">Giỏ hàng</a>
							</li>

							<li>
								<a href="blog.html">Tin tức</a>
							</li>

							<li>
								<a href="about.html">Về chúng tôi</a>
							</li>

							<li>
								<a href="contact.html">Liên hệ</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.html"><img src="resources/web/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="index.html">Home</a>
					<ul class="sub-menu-m">
						<li><a href="index.html">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="product.html">Shop</a>
				</li>

				<li>
					<a href="shoping-cart.html" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.html">Blog</a>
				</li>

				<li>
					<a href="about.html">About</a>
				</li>

				<li>
					<a href="contact.html">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="resources/web/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>