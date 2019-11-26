package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Customer;
import com.cozashop.repository.CustomerRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	public List<Customer> findAll() {
		return customerRepository.findAll();
	}

	public Customer findById(int id) {
		return customerRepository.findById(id).get();
	}
	
	public long totalCustomer() {
		return customerRepository.count();
	}
	
	public Customer findByUsername(String username) {
		return customerRepository.findByUsername(username);
	}
	
	public Customer existsByUsernameAndPassword(String username,String password) {
		return customerRepository.findByUsernameAndPassword(username, password);
	}
	
	
	public List<Customer> listCustomerNew() {
		return customerRepository.listCustomerNew(PageRequest.of(0, 5));
	}
	
	public int NewCustomerToday() {
		return customerRepository.NewCustomerToday();
	}
	
	public Customer saveCustomer(Customer customer) {
		return customerRepository.save(customer);
		
	}
	public ApiResponse save(Customer customer){
//		này là có validate
		String name = customer.getName();
		String numberphone = customer.getPhone();
		String userName =customer.getUsername();
		String address =customer.getAddress();
		String email =customer.getEmail();
//		Check user đã tồn tại
		if(customerRepository.existsByUsername(customer.getUsername())){
			return new ApiResponse(Status.warning,"Tài khoản: " + customer.getUsername() + " đã có người sử dụng");
//		Check số điện thoại đã tồn tại
		}else if(customerRepository.existsByPhone(customer.getPhone())){
				return new ApiResponse(Status.warning,"Số điên thoại: " + customer.getPhone() + " đã có người sử dụng");
//		Check email đã tồn tại
		}else if(customerRepository.existsByEmail(customer.getEmail())){
//			nó sẽ return về một cái dữ liệu nào đó
				return new ApiResponse(Status.warning,"Email : " + customer.getEmail() + " đã tồn tại trong hệ thống");
//		Check 4 bỏ 1
		}else if(name.equals("") && numberphone.equals("") && userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
													+ "  + Họ Tên <br>"
													+ "  + Địa chỉ <br>"
													+ "	 + Email <br>"
													+ "  + Username <br>"
													+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && userName.equals("") && address.equals("") && !email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "  + Username <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && userName.equals("") && !address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "	 + Email <br>"
					+ "  + Username <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && !userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && !numberphone.equals("") && userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "  + Username");
		}else if(!name.equals("") && numberphone.equals("") && userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "  + Username <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền họ tên đầy đủ");
		}else if(numberphone.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền số điện thoại");
		}else if(userName.equals("")) {
			return new ApiResponse(Status.warning,"Không được bỏ trống tài khoản");
		}else if(address.equals("")) {
			return new ApiResponse(Status.warning,"Không được bỏ trống địa chỉ");
		}else if(email .equals("")) {
				return new ApiResponse(Status.warning,"Không được bỏ trống email");
		}else if(!email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$")) {
			return new ApiResponse(Status.warning,"- Vui lòng điền email chính sát <br> - ví dụ: xxx123@xxx.xxx");
		}else if(!numberphone.matches("^[0-9]*$")) {
			return new ApiResponse(Status.warning,"- Vui lòng điền chính sát số điện thoại <br> - ví dụ: 08xxxxxxxx");
		}else if(numberphone.length() >= 11) {
			return new ApiResponse(Status.warning,"- Số điện thoại phải phải gồm 10 số <br> - Và bắt đầu từ 08  <br> - Ví dụ: 08xxxxxxxx");
		}else if(!numberphone.substring(0,2).equals("08")) {
			return new ApiResponse(Status.warning,"- Số điện thoại phải bắt đầu từ 08 <br> - ví dụ: 08xxxxxxxx");
		}
		customerRepository.save(customer).getId();
		return new ApiResponse(Status.success,"Thêm khách hàng thành công");
	}

	public ApiResponse update(Customer customer) {
		String name = customer.getName();
		String numberphone = customer.getPhone();
		String userName =customer.getUsername();
		String address =customer.getAddress();
		String email =customer.getEmail();
//		Check 4 bỏ 1
		 if(name.equals("") && numberphone.equals("") && userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
													+ "  + Họ Tên <br>"
													+ "  + Địa chỉ <br>"
													+ "	 + Email <br>"
													+ "  + Username <br>"
													+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && userName.equals("") && address.equals("") && !email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "  + Username <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && userName.equals("") && !address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "	 + Email <br>"
					+ "  + Username <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && !userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && !numberphone.equals("") && userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "  + Username");
		}else if(!name.equals("") && numberphone.equals("") && userName.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "  + Username <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền họ tên đầy đủ");
		}else if(numberphone.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền số điện thoại");
		}else if(userName.equals("")) {
			return new ApiResponse(Status.warning,"Không được bỏ trống tài khoản");
		}else if(address.equals("")) {
			return new ApiResponse(Status.warning,"Không được bỏ trống địa chỉ");
		}else if(email .equals("")) {
				return new ApiResponse(Status.warning,"Không được bỏ trống email");
		}else if(!email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$")) {
			return new ApiResponse(Status.warning,"- Vui lòng điền email chính sát <br> - ví dụ: xxx123@xxx.xxx");
		}else if(!numberphone.matches("^[0-9]*$")) {
			return new ApiResponse(Status.warning,"- Vui lòng điền chính sát số điện thoại <br> - ví dụ: 08xxxxxxxx");
		}else if(numberphone.length() >= 11 || numberphone.length() <= 9) {
			return new ApiResponse(Status.warning,"- Số điện thoại phải phải gồm 10 số <br> - Và bắt đầu từ 08  <br> - Ví dụ: 08xxxxxxxx");
		}else if(!numberphone.substring(0,2).equals("08")) {
			return new ApiResponse(Status.warning,"- Số điện thoại phải bắt đầu từ 08 <br> - ví dụ: 08xxxxxxxx");
		}
		customerRepository.updateByCustomer(customer.getUsername(), customer.getPassword(), customer.getName(),
				customer.getEmail(), customer.getPhone(), customer.getAddress(), customer.isGender(),
				customer.isEnabled(), customer.getCreateAt(), customer.getId());
		customerRepository.save(customer).getId();
		return new ApiResponse(Status.success,"Sửa khách hàng thành công");
	}
	
	public ApiResponse updateCustomerOrder(Customer customer) {
		String name = customer.getName();
		String numberphone = customer.getPhone();
		String address =customer.getAddress();
		String email =customer.getEmail();
//		Check 4 bỏ 1
		 if(name.equals("") && numberphone.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
													+ "  + Họ Tên <br>"
													+ "  + Địa chỉ <br>"
													+ "	 + Email <br>"
													+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && address.equals("") && !email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && !address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "	 + Email <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && numberphone.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("") && !numberphone.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Họ Tên <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email");
		}else if(!name.equals("") && numberphone.equals("") && address.equals("") && email.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền thông tin <br>"
					+ "  + Địa chỉ <br>"
					+ "	 + Email <br>"
					+ "	 + Số Điện Thoại");
		}else if(name.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền họ tên đầy đủ");
		}else if(numberphone.equals("")) {
			return new ApiResponse(Status.warning,"Vui lòng điền số điện thoại");
		}else if(address.equals("")) {
			return new ApiResponse(Status.warning,"Không được bỏ trống địa chỉ");
		}else if(email .equals("")) {
				return new ApiResponse(Status.warning,"Không được bỏ trống email");
		}else if(!email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$")) {
			return new ApiResponse(Status.warning,"- Vui lòng điền email chính sát <br> - ví dụ: xxx123@xxx.xxx");
		}else if(!numberphone.matches("^[0-9]*$")) {
			return new ApiResponse(Status.warning,"- Vui lòng điền chính sát số điện thoại <br> - ví dụ: 08xxxxxxxx");
		}else if(numberphone.length() >= 11 || numberphone.length() <= 9) {
			return new ApiResponse(Status.warning,"- Số điện thoại phải phải gồm 10 số <br> - Và bắt đầu từ 08  <br> - Ví dụ: 08xxxxxxxx");
		}else if(!numberphone.substring(0,2).equals("08")) {
			return new ApiResponse(Status.warning,"- Số điện thoại phải bắt đầu từ 08 <br> - ví dụ: 08xxxxxxxx");
		}
		customerRepository.updateCustomerOrder(customer.getName(),
				customer.getEmail(), customer.getPhone(), customer.getAddress(),customer.getId());
		/* customerRepository.save(customer).getId(); */
		return new ApiResponse(Status.success,"Sửa khách hàng thành công");
	}
	public String delete(int id) {
		try {
			customerRepository.deleteById(id);
			return "a";
		} catch (Exception e) {
			return "";
		}
	}
}
