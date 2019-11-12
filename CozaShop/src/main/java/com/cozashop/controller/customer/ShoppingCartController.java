package com.cozashop.controller.customer;

import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.swing.text.DefaultFormatter;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Cart;
import com.cozashop.entities.Customer;
import com.cozashop.entities.Gift;
import com.cozashop.entities.Order;
import com.cozashop.entities.OrderDetails;
import com.cozashop.entities.Product;
import com.cozashop.service.CustomerService;
import com.cozashop.service.DistrictService;
import com.cozashop.service.EmailService;
import com.cozashop.service.GiftService;
import com.cozashop.service.InfoProductService;
import com.cozashop.service.OrderDetailService;
import com.cozashop.service.OrderService;
import com.cozashop.service.ProviceService;
import com.cozashop.service.WardService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;
import com.cozashop.util.Helper;
import com.fasterxml.jackson.core.JsonProcessingException;

import javassist.NotFoundException;

@Controller
@RequestMapping("/cart")
public class ShoppingCartController {

	@Autowired
	private InfoProductService infoProductService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private OrderService OrderService;

	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private ProviceService proviceService;
	
	@Autowired
	private DistrictService districtService;
	
	@Autowired
	private WardService wardService;
	
	@Autowired
	private GiftService giftService;
	@Autowired
	private EmailService emailService;

	@GetMapping(value = "/show")
	public String index(Model model,HttpSession session) {
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		model.addAttribute("listProvince",proviceService.findAll());
		model.addAttribute("listDictricts",districtService.finById("79"));
		model.addAttribute("listWard",wardService.finById("760"));
		return "customer/shoping-cart";
	}

//	@PreAuthorize("hasRole('ANONYMOUS')")
	@GetMapping("/add/{id}")
	@ResponseBody
	public int addCart(HttpSession session, @PathVariable String id,@RequestParam int quantity)
			throws NotFoundException, JsonProcessingException {
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		Cart cart = null;
		if (listCart == null) {
			listCart = new HashMap<String, Cart>();
		}
		Product product = infoProductService.finById(id);
		if (product != null) {
			if ((cart = listCart.get(id)) != null) {
				cart.setQuantity(cart.getQuantity() + quantity);
			} else {
				cart = new Cart(product, quantity);
			}
			listCart.put(id, cart);
			session.setAttribute("CART", listCart);
		}
		return listCart.size() ;
	}

	@GetMapping("/products")
	public String getProduct(HttpSession session) {
		return "customer/cart-modal";
	}
	
	@GetMapping("/check")
	@ResponseBody
	public Gift getProduct(@RequestParam String code) {
		return giftService.finByCode(code);
	}
	
	@GetMapping("/getTotalMoney/a")
	@ResponseBody
	public ApiResponse getTotalMoney(HttpSession session,Model model,@RequestParam String address, @RequestParam String province, @RequestParam String district,
		@RequestParam String ward, @RequestParam String phone, @RequestParam String name,@RequestParam String code,
			@RequestParam String email) {
		double total = 0;
		 if(!Helper.notNull(address,province,district,ward,phone,name,email)) { 
			 return new ApiResponse(Status.warning,"Điền thông tin đầy đủ trước khi thanh toán nhá!",total); 
		}else if(!Helper.validateEmail(email)) {
			return new ApiResponse(Status.warning,"Vui Lòng Nhập Đúng Định Dạng Email \n VD : xnxx123@gmail.com!","validateEmail"); 
		}else if(!Helper.validatePhone(phone)) {
			return new ApiResponse(Status.warning,"Vui Lòng Nhập Đúng Định Dạng Số Điện Thoại \n VD : 08xxxxxxxxx!","validatePhone"); 
		}
		Gift gift = giftService.finByCode(code);
		DecimalFormat fm = new DecimalFormat("#");
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		for (Map.Entry<String, Cart> list : listCart.entrySet()) {
			total += (list.getValue().getQuantity() * list.getValue().getProduct().getPrice());
		}
		if(gift != null) {
			total = total - gift.getMoney();
		}
		return new ApiResponse(Status.success,"Số Tiền Cần Phải Thanh Toán!", fm.format(total));
	}
	
	@GetMapping("/table")
	public String getProductTable(HttpSession session) {
		return "customer/cart-table";
	}

	@PostMapping("/delete/{id}")
	public String deleteProduct(HttpSession session,Model model, @RequestParam String type, @PathVariable String id) {
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		listCart.remove(id);
		session.setAttribute("CART", listCart);
		model.addAttribute("cartSize",listCart.size());
		if (type.equals("table")) {
			return "customer/cart-table";
		} else {
			return "customer/cart-modal";
		}
	}
	
	@PostMapping("/upquantity/{id}")
	@ResponseBody
	public String upQuantityProduct(HttpSession session,@PathVariable String id) throws NotFoundException {
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		Cart cart = null;
		if (listCart == null) {
			listCart = new HashMap<String, Cart>();
		}
		Product product = infoProductService.finById(id);
		if (product != null) {
			if ((cart = listCart.get(id)) != null) {
				cart.setQuantity(cart.getQuantity() + 1);
				DecimalFormat fm = new DecimalFormat("#");
				return fm.format(cart.getQuantity() * cart.getProduct().getPrice());
			}
		}
		return null;
	}
	
	@PostMapping("/backquantity/{id}")
	@ResponseBody
	public String backQuantityProduct(HttpSession session,@PathVariable String id) throws NotFoundException {
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		Cart cart = null;
		if (listCart == null) {
			listCart = new HashMap<String, Cart>();
		}
		Product product = infoProductService.finById(id);
		if (product != null) {
			if ((cart = listCart.get(id)) != null) {
				cart.setQuantity(cart.getQuantity() -1);
				DecimalFormat fm = new DecimalFormat("#");
				return fm.format(cart.getQuantity() * cart.getProduct().getPrice());
			}
		}
		return null;
	}
	
	@PostMapping("/checkout")
	@ResponseBody
	public ApiResponse checkOut(@RequestParam String address, @RequestParam String province, @RequestParam String district,
		@RequestParam String ward, @RequestParam String phone, @RequestParam String name,@RequestParam String code,
			@RequestParam String email, HttpSession session)
			throws NotFoundException, MessagingException, UnsupportedEncodingException {
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		if(listCart == null) {
			return new ApiResponse(Status.warning,"Hãy mua gì đó rồi thanh toán sau nhé!");
		}
		DecimalFormat fm = new DecimalFormat("#");
		double total =0;
		
		StringBuffer BfAddress = new StringBuffer();
		BfAddress.append(address + ", ");
		BfAddress.append(province + ", ");
		BfAddress.append(district + ", ");
		BfAddress.append(ward);
		String username = Helper.randomAlphaNumeric(8);
		
		for (Map.Entry<String, Cart> list : listCart.entrySet()) {
			total += (list.getValue().getQuantity() * list.getValue().getProduct().getPrice() +30000);
		}
		Gift gift = giftService.finByCode(code); 
		if(gift != null) {
			total = total - gift.getMoney();
		}
		
		Customer customer = customerService.saveCustomer(new Customer(username, name, BfAddress.toString(),
				RandomStringUtils.randomAlphanumeric(10), false,
				email, phone, false, new Date()));
		Order order = OrderService.save(new Order(total,customer, new Date(), false));
		StringBuffer sendmail = new StringBuffer();
		sendmail.append("<!DOCTYPE html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8' /><title>Demystifying Email Design</title><meta name='viewport' content='width=device-width, initial-scale=1.0'/></head>");
		sendmail.append("<body style='margin: 0; padding: 0;'>");
		sendmail.append("<h1 style='text-align:center'>Xác Nhận Thông Tin Đơn Hàng Của Bạn Bao Gồm</h1>");
		sendmail.append("<span style='display: block;margin-left: 415px'>Anh/Chị          : "+ customer.getName() +"</span>");
		sendmail.append("<span style='display: block;margin-left: 415px'>Số điện thoại    : "+ customer.getPhone() +"</span>");
		sendmail.append("<span style='display: block;margin-left: 415px';margin-top:50px>Địa chỉ nhận hàng: "+ customer.getAddress() +"</span></br>");
		sendmail.append("<table align='center' border='1' cellpadding='0' cellspacing='0' width='800' style='margin-top:30px;border-collapse: collapse;border-style: dotted;'>");
		sendmail.append("<thead>");
		sendmail.append("<th>Tên Sản Phẩm</th>");
		sendmail.append("<th>Số Lượng</th>");
		sendmail.append("<th>Giá Tiền</th>");
		sendmail.append("</thead>");
		sendmail.append("<tbody>");
		for (Map.Entry<String, Cart> list : listCart.entrySet()) {
			
			Product product = infoProductService.finById(list.getKey());
			if(product != null) {
				orderDetailService.save(new OrderDetails(product,order,list.getValue().getQuantity(),list.getValue().getProduct().getPrice()));
				sendmail.append("<tr>");
				sendmail.append("<td style='text-align: center'>"+list.getValue().getProduct().getName()+"</td>");
				sendmail.append("<td style='text-align: center'>"+list.getValue().getQuantity() +"</td>");
				sendmail.append("<td style='text-align: center'>"+fm.format(list.getValue().getProduct().getPrice())+"</td>");
				sendmail.append("</tr>");
			}
		}
		sendmail.append("</tbody>");
		sendmail.append("</table>");
		sendmail.append("</body>");
		sendmail.append("<h1 style='margin-left:900px'> Phí ship      : 30000</h1>");
		sendmail.append("<h1 style='margin-left:900px'> Tổng tiền hàng: "+fm.format(order.getTotalmoney() -30000)+"</h1>");
		sendmail.append("<h1 style='margin-left:900px'> Tổng tiền     : "+fm.format(total)+"</h1>");
		sendmail.append("<h1 style='text-align:center'> Cám ơn bạn đã mua hàng tại <span style='color: #f13d3d'>Coza Shop</span></h1>");
		sendmail.append("<h1 style='text-align:center'> Bạn vui lòng chú ý điện thoại Shipper giao hàng nhé</h1>");
		sendmail.append("</html>");
		emailService.sendMail(customer.getEmail(),"Hóa Đơn",sendmail.toString());
		return new ApiResponse(Status.success, "Check Mail Để Nhận Thông Tin Về Đơn hàng");
	}
}
