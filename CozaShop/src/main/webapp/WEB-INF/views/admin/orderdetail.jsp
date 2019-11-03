
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="card">
		<div class="card-header">
			<i class="fa fa-table"></i> Danh Sách
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table id="example" class="table table-bordered">
					<thead>
						<tr>
							<th class="column-title">Id</th>
							<th class="column-title">Mã Hóa Đơn</th>
							<th class="column-title">Sản Phẩm</th>
							<th class="column-title">Số Lượng</th>
							<th class="column-title">Giá</th>
							<th class="column-title">Ngày Tạo</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${listOrderdetail}">
							<tr class="even pointer">
								<td class=" ">${list.id }</td>
								<td class=" ">${list.order.id }</td>
								<td class=" ">${list.product.name }</td>
								<td class=" ">${list.quantity }</td>
								<td class=" ">${list.price }</td>
								<td class=" ">${list.createAt }</td>
								<%-- <td class=" ">
									<button type="button" data-id="${order.id }"
										class="btn btn-outline-dark waves-effect waves-light m-1 show-orderdetail">
										<i class="fa fa-pencil"> Xem</i>
									</button>
									<button type="button"
										class="btn btn-outline-danger waves-effect waves-light m-1 btnDelete"
										data-id="${order.id }" name="btnDelete">
										<i class="fa fa-trash"> Xóa</i>
									</button>
								</td> --%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>