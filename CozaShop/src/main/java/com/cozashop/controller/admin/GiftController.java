package com.cozashop.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Color;
import com.cozashop.entities.Gift;
import com.cozashop.entities.Material;
import com.cozashop.service.ColorService;
import com.cozashop.service.GiftService;
import com.cozashop.service.MaterialService;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Controller
@RequestMapping(value = "/admin/")
public class GiftController {

	
	@Autowired
	private GiftService  giftService;
	
	@PreAuthorize("hasRole('ADMIN')")
	@GetMapping("gift")
	public String colorJsp(Model model) {
		model.addAttribute("listGift", giftService.finAll());
		return "admin/gift";
	}
	
//  Edit
	@GetMapping(value = "gift/{id}")
	@ResponseBody
	public Gift getbyid(@PathVariable("id") int id) {
		return giftService.finById(id);
	}

//	Delete
	@GetMapping(value = "gift/btnDelete")
	@ResponseBody
	public int delete(@RequestParam int id, Boolean enabled) {
		return giftService.updateEnabled(enabled, id);
	}
	
//	Hiden
	@GetMapping(value = "gift/btnHide")
	@ResponseBody
	public int hiden(@RequestParam int id) {
		return giftService.delete(id);
	}

//  Update
	@GetMapping(value = "gift/btnUpdate")
	@ResponseBody
	public ApiResponse update(@RequestParam int id,
			@RequestParam String name,
			@RequestParam double money,
			@RequestParam String code,
			@RequestParam boolean enabled) {
		return giftService.update(new Gift(id,name,money,code,new Date(),enabled));
	}

//  Insert
	@PostMapping(value = "gift/btnInsert")
	@ResponseBody
	public ApiResponse insert(
			@RequestParam String name,
			@RequestParam String money,
			@RequestParam String code,
			@RequestParam boolean enabled) {
		try {
			return giftService.save(new Gift(name,Double.parseDouble(money),code,new Date(),enabled));
		}catch(Exception e) {
			 return new ApiResponse(Status.warning, "+ Giá Tiền Phải là số </br>+ Không Chứa chữ và kí tự đặc biệt");
		}
		
	}
}
