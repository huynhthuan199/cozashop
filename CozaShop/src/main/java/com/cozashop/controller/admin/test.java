package com.cozashop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.District;
import com.cozashop.entities.Province;
import com.cozashop.entities.Ward;
import com.cozashop.service.DistrictService;
import com.cozashop.service.ProviceService;
import com.cozashop.service.WardService;
@Controller
@RequestMapping("/admin/")
public class test {

	@Autowired
	private ProviceService proviceService;
	
	@Autowired
	private DistrictService districtService;
	
	@Autowired
	private WardService wardService;
	
	@GetMapping("abc")
	public String indexxxx(Model model) {
		model.addAttribute("listProvince",proviceService.findAll());
		model.addAttribute("listDictricts",districtService.finById("79"));
		model.addAttribute("listWard",wardService.finById("760"));
		return "admin/customer2";
	}
	
	@PostMapping("test")
	@ResponseBody
	public List<District> index(@RequestParam("id") String id) {
		return districtService.finById(id);
	}
	
	@PostMapping("test2")
	@ResponseBody
	public List<Province> inde2x() {
		return proviceService.findAll();
	}
	
	@PostMapping("test3")
	@ResponseBody
	public List<Ward> inde3x(@RequestParam("id") String id) {
		return wardService.finById(id);
	}
}
