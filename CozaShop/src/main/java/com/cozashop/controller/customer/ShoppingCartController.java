package com.cozashop.controller.customer;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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
import com.cozashop.entities.Order;
import com.cozashop.entities.OrderDetails;
import com.cozashop.entities.Product;
import com.cozashop.service.CustomerService;
import com.cozashop.service.DistrictService;
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
	
	@GetMapping("/getTotalMoney/a")
	@ResponseBody
	public String getTotalMoney(HttpSession session,Model model) {
		double total = 0;
		DecimalFormat fm = new DecimalFormat("#");
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		for (Map.Entry<String, Cart> list : listCart.entrySet()) {
			total += (list.getValue().getQuantity() * list.getValue().getProduct().getPrice());
		}
		return fm.format(total);
		
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
		@RequestParam String ward, @RequestParam String phone, @RequestParam String name,
			@RequestParam String email, HttpSession session)
			throws NotFoundException {/*
										 * 
										 * 
										 * if(!Helper.notNull(address,province,district,ward,phone,name,email)) { return
										 * new
										 * ApiResponse(Status.warning,"Điền thông tin đầy đủ trước khi thanh toán nhá!"
										 * ); }
										 */
		Map<String, Cart> listCart = (Map<String, Cart>) session.getAttribute("CART");
		if(listCart == null) {
			return new ApiResponse(Status.warning,"Hãy mua gì đó rồi thanh toán sau nhé!");
		}
		double total =0;
		
		StringBuffer BfAddress = new StringBuffer();
		BfAddress.append(address + ", ");
		BfAddress.append(province + ", ");
		BfAddress.append(district + ", ");
		BfAddress.append(ward);
		
		String username = Helper.randomAlphaNumeric(8);
		
		for (Map.Entry<String, Cart> list : listCart.entrySet()) {
			total += (list.getValue().getQuantity() * list.getValue().getProduct().getPrice());
		}
		
		Customer customer = customerService.saveCustomer(new Customer(username, name, BfAddress.toString(),
				RandomStringUtils.randomAlphanumeric(10), false,
				email, phone, false, new Date()));
		
		Order order = OrderService.save(new Order(total,customer, new Date(), false));
		
		for (Map.Entry<String, Cart> list : listCart.entrySet()) {
			
			Product product = infoProductService.finById(list.getKey());
			if(product != null) {
				orderDetailService.save(new OrderDetails(product,order,list.getValue().getQuantity(),list.getValue().getProduct().getPrice()));
			}
		}
		return new ApiResponse(Status.success, "Check Mail Để Nhận Thông Tin Về Đơn hàng");
	}
}
