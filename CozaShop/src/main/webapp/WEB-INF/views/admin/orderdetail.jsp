
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="card">
	<div class="card-header">
		<i class="fa fa-table"></i> Khách Hàng
	</div>
	<div class="card-body">
		<div class="form-group row">
			<label for="input-27" class="col-sm-2 col-form-label">Id</label>
			<div class="col-sm-10">
				<input readonly type="text"
					class="form-control form-control-rounded" id="txtid" name="txtid"
					placeholder="Id" value="${customeOrderdetail.id }">
			</div>
		</div>
		<div class="form-group row">
			<label for="input-27" class="col-sm-2 col-form-label">Họ Tên</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-rounded"
					id="txtname" name="txtname" placeholder="Nhập vào họ tên..." value="${customeOrderdetail.name }">
			</div>
		</div>
		<div class="form-group row">
			<label for="input-27" class="col-sm-2 col-form-label">Địa Chỉ
				Cụ Thể</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-rounded"
					id="txtaddress" name="txtaddress"
					placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng..." value="${customeOrderdetail.address }">
			</div>
		</div>
		<div class="form-group row">
			<label for="input-27" class="col-sm-2 col-form-label">Email</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-rounded"
					id="txtemail" name="txtemail"
					placeholder="Nhập vào địa chỉ Email của bạn..." value="${customeOrderdetail.email }">
			</div>
		</div>
		<div class="form-group row">
			<label for="input-27" class="col-sm-2 col-form-label">Số Điện
				Thoại</label>
			<div class="col-sm-10">
				<input type="text" class="form-control form-control-rounded"
					id="txtphone" name="txtphone"
					placeholder="Nhập vào số điện thoại của bạn..." value="${customeOrderdetail.phone }">
			</div>
		</div>
		<button type="button"
			class="btn btn-info shadow-info btn-round px-5 btnUpdateCustomer">
			<i class="fa fa-check-square-o"></i> Lưu
		</button>
	</div>
</div>
<div class="card">
	<div class="card-header">
		<i class="fa fa-table"></i> Danh Sách
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table id="example" class="table table-bordered orderdetail">
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
						<tr class="even pointer" data-id="${list.id }">
							<td class="idOrder" data-id="${list.id }">${list.id }</td>
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