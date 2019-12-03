package com.cozashop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
public class PDWController {

	@Autowired
	private ProviceService proviceService;
	
	@Autowired
	private DistrictService districtService;
	
	@Autowired
	private WardService wardService;
	
	@PostMapping("test")
	@ResponseBody
	public List<District> getDistrict(@RequestParam("id") List<String> id) {
		try {
			return districtService.finById(id.get(0));
		}catch(Exception e) {
			return null;
		}
		
	}
	
	@PostMapping("test2")
	@ResponseBody
	public List<Province> getProvice() {
		return proviceService.findAll();
	}
	
	@PostMapping("test3")
	@ResponseBody
	public List<Ward> getWard(@RequestParam("id") String id) {
		return wardService.finById(id);
	}
}
