<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Trang Chủ</title>
  <!--favicon-->
  <link rel="icon" href="/resources/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- simplebar CSS-->
  <link href="/resources/admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet">
  <!-- Bootstrap core CSS-->
  <link href="/resources/admin/assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- animate CSS-->
  <link href="/resources/admin/assets/css/animate.css" rel="stylesheet" type="text/css">
  <!-- Icons CSS-->
  <link href="/resources/admin/assets/css/icons.css" rel="stylesheet" type="text/css">
  <!-- Sidebar CSS-->
  <link href="/resources/admin/assets/css/sidebar-menu.css" rel="stylesheet">
  <!-- Custom Style-->
  <link href="/resources/admin/assets/css/app-style.css" rel="stylesheet">
  
</head>

<body>

<!-- Start wrapper-->
 <div id="wrapper">
 
  <!--Start sidebar-wrapper-->
   <%@ include file="./block/nav.jsp"%>
   <!--End sidebar-wrapper-->

<!--Start topbar header-->
<%@ include file="./block/header.jsp"%>
<!--End topbar header-->

<div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

      <!--Start Dashboard Content-->
	  
      <div class="row mt-3">
        <div class="col-12 col-lg-6 col-xl-3">
          <div class="card gradient-bloody">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white pb-10">Tiền Đã Nhận</p>
                <h4 class="text-white line-height-5"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${totalOrderTrue}"/></h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-money text-white"></i></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-12 col-lg-6 col-xl-3">
          <div class="card gradient-scooter">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Tiền Chưa Thanh Toán</p>
                <h4 class="text-white line-height-5"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${totalOrderFalse}"/></h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-cart-plus text-white"></i></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-12 col-lg-6 col-xl-3">
         <a href="./customer">
          <div class="card gradient-blooker">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Tổng Khách Hàng</p>
                <h4 class="text-white line-height-5 ml-5">${totalCustomer}</h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-users text-white"></i></div>
            </div>
            </div>
            </a>
          </div>
        </div>
        
        <div class="col-12 col-lg-6 col-xl-3">
          <div class="card gradient-ohhappiness">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Tổng Hóa Đơn</p>
                <h4 class="text-white line-height-5 ml-5">${totalorder}</h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-pie-chart text-white"></i></div>
            </div>
            </div>
          </div>
        </div>
        <div class="col-12 col-lg-6 col-xl-3">
        <a href="./infoproduct">
          <div class="card gradient-titanium">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Tổng Số Sản Phẩm</p>
                <h4 class="text-white line-height-5 ml-5">${totalProduct}</h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-puzzle-piece text-white"></i></div>
            </div>
            </div>
          </div>
           </a>
        </div>
        
        <div class="col-12 col-lg-6 col-xl-3">
          <div class="card gradient-ohhappiness">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Hóa Đơn Đã / Chưa</p>
                <h4 class="text-white line-height-5 ml-5">${totalorderEnabled} / ${totalorderDisnabled}</h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-first-order text-white"></i></div>
            </div>
            </div>
          </div>
        </div>
        
        <div class="col-12 col-lg-6 col-xl-3">
          <div class="card gradient-jshine">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Khách Hàng Mới</p>
                <h4 class="text-white line-height-5 ml-5">${NewCustomerToday}</h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-user-plus text-white"></i></div>
            </div>
            </div>
          </div>
        </div>
        
         <div class="col-12 col-lg-6 col-xl-3">
          <div class="card gradient-hossein">
            <div class="card-body">
              <div class="media align-items-center">
              <div class="media-body">
                <p class="text-white">Hóa Đơn Hôm Nay</p>
                <h4 class="text-white line-height-5 ml-5">${newOrderToday}</h4>
              </div>
              <div class="w-circle-icon rounded-circle border border-white">
                <i class="fa fa-plus text-white"></i></div>
            </div>
            </div>
          </div>
        </div>
        
      </div><!--End Row-->

      <div class="row">
        <div class="col-12 col-lg-6">
          <div class="card">
            <div class="card-header">
               Thống Kê Theo Tháng [2019]
                <div class="card-action">
                 <div class="dropdown">
                 <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
                  <i class="icon-options"></i>
                 </a>
                    <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="javascript:void();">Action</a>
                    <a class="dropdown-item" href="javascript:void();">Another action</a>
                    <a class="dropdown-item" href="javascript:void();">Something else here</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="javascript:void();">Separated link</a>
                   </div>
                  </div>
                 </div>
                </div>
                <div class="card-body">
                  <canvas id="dashboard-chart-1"></canvas>
                </div>
          </div>
        </div>
        <div class="col-12 col-lg-6">
          <div class="card">
            <div class="card-header">
                Tổng Sản Phẩm Bán Ra Theo Danh Mục
                <div class="card-action">
                 </div>
                </div>
                <div class="card-body">
                  <canvas id="dashboard-chart-2"></canvas>
                </div>
          </div>
        </div>
      </div><!--End Row-->
		  
		  
      <div class="row">
        <div class="col-12 col-lg-12 col-xl-12">
          <div class="card">
    		   <div class="card-header">
                <i class="fa fa-area-chart"></i> Sales Report 
    				<div class="card-action">

              <div class="form-group mb-0">
                <select class="form-control form-control-sm">
                  <option>Jan 18</option>
                  <option>Feb 18</option>
                  <option>Mar 18</option>
                  <option>Apr 18</option>
                  <option>May 18</option>
                  <option>Jun 18</option>
                  <option>Jul 18</option>
                  <option>Aug 18</option>
                  <option selected="">Sept 18</option>
                </select>
              </div>
                     </div>
    				</div>
                 <div class="card-body">
                   <canvas id="dashboard-chart-3" height="100"></canvas>
                 </div>
          </div>
        </div>
		
      </div><!--End Row-->


      <div class="row">
         <div class="col-12 col-lg-6 col-xl-8">
           <div class="card">
             <div class="card-header border-0">
              Danh Sách Khách Hàng Mới
            <div class="card-action">
             <div class="dropdown">
             <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
              <i class="icon-options"></i>
             </a>
              <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="javascript:void();">Action</a>
                <a class="dropdown-item" href="javascript:void();">Another action</a>
                <a class="dropdown-item" href="javascript:void();">Something else here</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="javascript:void();">Separated link</a>
               </div>
              </div>
             </div>
            </div>
            <div class="table-responsive">
             <table class="table align-items-center table-flush">
               <thead class="thead-info">
                <tr>
                 <th>Họ Tên</th>
                 <th>Số Điện Thoại</th>
                <!--  <th>Địa Chỉ</th> -->
                 <th>Email</th>
                 <th>Công Cụ</th>
                </tr>
               </thead>
               <tbody>
               <c:forEach var="listCustomerNew" items="${listCustomerNew }">
                 <tr>
                   <td>${listCustomerNew.name }</td>
                   <td>${listCustomerNew.phone }</td>
                   <%-- <td>${listCustomerNew.address }</td> --%>
                   <td>${listCustomerNew.email }</td>
                   <td><button data-id="${listCustomerNew.id }" type="button" class="btn btn-info waves-effect waves-light m-1 editCustomer">
                   <i class="fa fa-search"></i>
                   </button></td>
                 </tr>
               </c:forEach>
               </tbody>
             </table>
           </div>
           </div>
         </div>
         <div class="col-12 col-lg-6 col-xl-4">
           <div class="card">
              <div class="card-header">Social Traffic</div>
              <div class="card-body">
                 <div class="media align-items-center">
                   <div><i class="fa fa-facebook-square fa-2x text-facebook"></i></div>
                     <div class="media-body text-left ml-3">
                       <div class="progress-wrapper">
                         <p>Facebook <span class="float-right">65%</span></p>
                         <div class="progress" style="height: 7px;">
                          <div class="progress-bar bg-facebook" style="width:65%"></div>
                         </div>
                        </div>                   
                    </div>
                  </div>
                  <hr>
                  <div class="media align-items-center">
                   <div><i class="fa fa-twitter fa-2x text-twitter"></i></div>
                     <div class="media-body text-left ml-3">
                       <div class="progress-wrapper">
                         <p>Twitter <span class="float-right">50%</span></p>
                         <div class="progress" style="height: 7px;">
                          <div class="progress-bar bg-twitter" style="width:50%"></div>
                         </div>
                        </div>                   
                    </div>
                  </div>
                  <hr>
                  <div class="media align-items-center">
                   <div><i class="fa fa-dribbble fa-2x text-dribbble"></i></div>
                     <div class="media-body text-left ml-3">
                       <div class="progress-wrapper">
                         <p>Dribble <span class="float-right">70%</span></p>
                         <div class="progress" style="height: 7px;">
                          <div class="progress-bar bg-dribbble" style="width:70%"></div>
                         </div>
                        </div>                   
                    </div>
                  </div>
                   <hr>
                  <div class="media align-items-center">
                   <div><i class="fa fa-linkedin-square fa-2x text-linkedin"></i></div>
                     <div class="media-body text-left ml-3">
                       <div class="progress-wrapper">
                         <p>Linkedin <span class="float-right">35%</span></p>
                         <div class="progress" style="height: 7px;">
                          <div class="progress-bar bg-linkedin" style="width:35%"></div>
                         </div>
                        </div>                   
                    </div>
                  </div>
                  <hr>
                  <div class="media align-items-center">
                   <div><i class="fa fa-youtube-square fa-2x text-youtube"></i></div>
                     <div class="media-body text-left ml-3">
                       <div class="progress-wrapper">
                         <p>Youtube <span class="float-right">5%</span></p>
                         <div class="progress" style="height: 7px;">
                          <div class="progress-bar bg-youtube" style="width:25%"></div>
                         </div>
                        </div>                   
                    </div>
                  </div>
              </div>
            </div>
         </div>
      </div><!--End Row-->


      <div class="row">
        <div class="col-lg-12">
          <div class="card">
      <div class="card-header border-0">
                TOP 5 Sản Phẩm Bán Ra
        <div class="card-action">
                 </div>
                </div>
               <div class="table-responsive">
         
                 <table id="example" class="table align-items-center table-flush table-dark">
                  <thead>
                   <tr>
                     <th>Mã Sản Phẩm</th>
                     <th>Tên Sản Phẩm</th>
                     <th>Hình Ảnh</th>
                     <th>Số Lượng Bán Ra</th>
                     <th>Tổng Tiền</th>
                   </tr>
                   </thead>
                   <tbody id="totalQuantityProduct">
                   </tbody>
                 </table>
               </div>
          </div>
        </div>
      </div><!--End Row-->

      <!--End Dashboard Content-->

    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--Start footer-->
	<%@ include file="./block/footer.jsp"%>
	<!--End footer-->
   <!-- Modal -->
		<div class="modal fade" id="edit-customer">
			<div class="modal-dialog" style="max-width: 700px">
				<div class="modal-content animated jackInTheBox">
					<div class="modal-header">
						<h5 class="modal-title">Chỉnh Sửa Thông Tin Khách Hàng</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Id</label>
							<div class="col-sm-10">
								<input readonly type="text"
									class="form-control form-control-rounded" id="txtid"
									name="txtid" placeholder="Id">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Họ
								Tên</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtname" name="txtname" placeholder="Nhập vào họ tên...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Trạng
								Thái</label>
							<div class="col-sm-4">
								<div class="icheck-material-primary icheck-inline">
									<input type="radio" id="rdoenabled_true" name="rdoenabled"
										checked value="true"> <label for="rdoenabled_true">Offline</label>
								</div>
								<div class="icheck-material-info icheck-inline">
									<input type="radio" id="rdoenabled_false" name="rdoenabled"
										value="false"> <label for="rdoenabled_false">Online</label>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Địa
								Chỉ Cụ Thể</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtaddress" name="txtaddress"
									placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtemail" name="txtemail"
									placeholder="Nhập vào địa chỉ Email của bạn...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Số
								Điện Thoại</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtphone" name="txtphone"
									placeholder="Nhập vào số điện thoại của bạn...">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn btn-danger shadow-danger btn-round px-5"
							data-dismiss="modal">
							<i class="fa fa-times"></i> Quay lại
						</button><!-- <!-- 
						<button type="button"
							class="btn btn-info shadow-info btn-round px-5 btnUpdate">
							<i class="fa fa-check-square-o"></i> Lưu
						</button> --> -->
					</div>
				</div>
			</div>
		</div>
		<!--End Modal -->
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="/resources/admin/assets/js/jquery.min.js"></script>
  <script src="/resources/admin/assets/js/popper.min.js"></script>
  <script src="/resources/admin/assets/js/bootstrap.min.js"></script>
	
  <!-- simplebar js -->
  <script src="/resources/admin/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- waves effect js -->
  <script src="/resources/admin/assets/js/waves.js"></script>
  <!-- sidebar-menu js -->
  <script src="/resources/admin/assets/js/sidebar-menu.js"></script>
  <!-- Custom scripts -->
  <script src="/resources/admin/assets/js/app-script.js"></script>
  <!-- Chart js -->
  <script src="/resources/admin/assets/plugins/Chart.js/Chart.min.js"></script>
  <!--Peity Chart -->
  <script src="/resources/admin/assets/plugins/peity/jquery.peity.min.js"></script>
  <!-- Index js -->
  <script src="/resources/admin/assets/js/index.js"></script>
  <script src="/resources/admin/build/customJS/ajaxofcustomer.js"></script>
	<script>
		$(document).ready(function() {
			
//			Chuyển đổi string money
			function addCommas(nStr)
			{
			    nStr += '';
			    x = nStr.split('.');
			    x1 = x[0];
			    x2 = x.length > 1 ? '.' + x[1] : '';
			    var rgx = /(\d+)(\d{3})/;
			    while (rgx.test(x1)) {
			        x1 = x1.replace(rgx, '$1' + ',' + '$2');
			    }
			    return x1 + x2;
			}
					$.get('/admin/getProductTotal', function(data) {
		 		    	var tr;
		 		    	var table = $('#example tbody')
		 		    	table.empty();
		 				  $.each(eval(data.replace(/[\r\n]/, "")), function(i, item) {
		 					   tr = "<tr><td>"+item[0]+"</td><td>"+item[1]+"</td><td> <img style='width:50px' src='/resources/web/images/Products/"+item[2]+"'</td><td> <span class='check2 badge badge-info shadow-info m-1 yourClass'>"+item[3]+" Cái </span></td><td>"+addCommas(item[4])+" VNĐ</td></tr>";
		 					  $('#totalQuantityProduct').append(tr)
		 				  });
		 				});
				});
	</script>
  <script>
	$(document).ready(function(){
		var ctx = document.getElementById("dashboard-chart-1").getContext('2d');
		var myChart = new Chart(ctx, {
		     type: 'bar',
		     data: {
		       labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
		       datasets: [{
		         label: 'Tổng Tiền Theo Tháng [đơn vị: VNĐ]',
		         data: [40, 30, 60, 35, 60, 25, 50, 40],
		         borderColor: '#11cdef',
		         backgroundColor: '#11cdef',
		         hoverBackgroundColor: '#11cdef',
		         pointRadius: 0,
		         fill: false,
		         borderWidth: 1
		       },{
		            label: 'Lãi [20%]',
		            data: [50, 60, 40, 70, 35, 75, 30, 20],
		            borderColor: '#e8e8e8',
		            backgroundColor: '#e8e8e8',
		            hoverBackgroundColor: '#e8e8e8',
		            pointRadius: 0,
		            fill: false,
		            borderWidth: 1
		          }]
		     },
		 options:{
		   legend: {
		     position: 'bottom',
		           display: true,
		     labels: {
		             boxWidth:12
		           }
		         },  
		   scales: {
		     xAxes: [{
		     stacked: true,
		     barPercentage: .5
		     }],
		       yAxes: [{
		    	   
		         stacked: true
		          }]
		      },
		   tooltips: {
			    callbacks: {
			          label: function(tooltipItem, data) {
			              return tooltipItem.yLabel.toFixed(1).replace(/\d(?=(\d{3})+\.)/g, '$&,');
			          }
			      },
		     displayColors:false,
		   }
		 }
		   });
		
		$.get('/admin/abc', function(data) {
			var chartmonth = [];
			var chartpending = [];
			var chartmoney = [];
			  $.each(eval(data.replace(/[\r\n]/, "")), function(i, item) {
				   chartmonth.push(item.month); 
				  chartmoney.push(item.totalmoney);
				  chartpending.push(item.totalmoney*0.2)
			  });
			  myChart.data.labels = chartmonth;
			  myChart.data.datasets[0].data = chartmoney;
			  myChart.data.datasets[1].data = chartpending;
			  myChart.update();
			});
 		
 	// chart 2

 		 var ctx = document.getElementById("dashboard-chart-2").getContext('2d');
	
 		      var myChart2 = new Chart(ctx, {
 		        type: 'doughnut',
 		        data: {
 		          labels: ["Jeans", "T-Shirts", "Shoes", "Lingerie", "Laptops", "Mobiles"],
 		          datasets: [{
 		            backgroundColor: [
 		              '#5e72e4',
 		              '#ff2fa0',
 		              '#2dce89',
 		              '#f5365c',
 		              '#fb6340',
 		              '#11cdef'
 		            ],
 		            hoverBackgroundColor: [
 		              '#5e72e4',
 		              '#ff2fa0',
 		              '#2dce89',
 		              '#f5365c',
 		              '#fb6340',
 		              '#11cdef'
 		            ],
 		            data: [25, 50, 25, 25, 15, 10],
 		      borderWidth: [1, 1, 1, 1, 1, 1]
 		          }]
 		        },
 		        options: {
 		      cutoutPercentage: 25,
 		            legend: {
 		        position: 'right',
 		              display: true,
 		        labels: {
 		                boxWidth:12
 		              }
 		            },
 		      tooltips: {
 		        displayColors:false,
 		      }
 		        }
 		      });
 		      
 		     $.get('/admin/tester', function(data) {
   				var nameProduct = [];
   				var totalProduct = [];
   				  $.each(eval(data.replace(/[\r\n]/, "")), function(i, item) {
   					  nameProduct.push(item[0]);
   					  totalProduct.push(item[1]);
   				  });
   				  myChart2.data.labels = nameProduct;
   				  myChart2.data.datasets[0].data = totalProduct;
   				  myChart2.update();
   				});
 		
 	})
  </script>
</body>
</html>
