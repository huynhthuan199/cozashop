package com.cozashop.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cozashop.entities.Color;
import com.cozashop.entities.Material;
import com.cozashop.service.ColorService;
import com.cozashop.service.MaterialService;
import com.cozashop.util.ApiResponse;

@Controller
@RequestMapping(value = "/admin/")
public class ColorAndMaterialController {

	@Autowired
	private ColorService  colorService;
	
	@Autowired
	private MaterialService  materialService;
	
	@GetMapping("color")
	public String colorJsp(Model model) {
		model.addAttribute("listColor", colorService.finAll());
		return "admin/color";
	}
	
//  Edit
	@GetMapping(value = "color/{id}")
	@ResponseBody
	public Color getbyid(@PathVariable("id") int id) {
		return colorService.finById(id);
	}

//	Delete
	@GetMapping(value = "color/btnDelete")
	@ResponseBody
	public int delete(@RequestParam int id, Boolean enabled) {
		return colorService.updateEnabled(enabled, id);
	}
	
//	Hiden
	@GetMapping(value = "color/btnHide")
	@ResponseBody
	public int hiden(@RequestParam int id) {
		return colorService.delete(id);
	}

//  Update
	@GetMapping(value = "color/btnUpdate")
	@ResponseBody
	public ApiResponse update(@RequestParam int id, @RequestParam String name,
			@RequestParam String enabled) {
		return colorService.update(new Color(id, name, Boolean.parseBoolean(enabled), new Date()));
	}

//  Insert
	@PostMapping(value = "color/btnInsert")
	@ResponseBody
	public ApiResponse insert(@RequestParam String name,
			@RequestParam String enabled) {
		return colorService.save(new Color(name, Boolean.parseBoolean(enabled), new Date()));
	}
	
	/* Action Material Controller */
	
	@GetMapping("material")
	public String materialJsp(Model model) {
		model.addAttribute("listMaterial", materialService.finAll());
		return "admin/material";
	}
	
//  Edit
	@GetMapping(value = "material/{id}")
	@ResponseBody
	public Material getbyidmaterial(@PathVariable("id") int id) {
		return materialService.finById(id);
	}

//	Delete
	@GetMapping(value = "material/btnDelete")
	@ResponseBody
	public int deletematerial(@RequestParam int id, Boolean enabled) {
		return materialService.updateEnabled(enabled, id);
	}
	
//	Hiden
	@GetMapping(value = "material/btnHide")
	@ResponseBody
	public int hidenmaterial(@RequestParam int id) {
		return materialService.delete(id);
	}

//  Update
	@GetMapping(value = "material/btnUpdate")
	@ResponseBody
	public ApiResponse updatematerial(@RequestParam int id, @RequestParam String name,
			@RequestParam String enabled) {
		return materialService.update(new Material(id, name, Boolean.parseBoolean(enabled), new Date()));
	}

//  Insert
	@PostMapping(value = "material/btnInsert")
	@ResponseBody
	public ApiResponse insertmaterial(@RequestParam String name,
			@RequestParam String enabled) {
		return materialService.save(new Material(name, Boolean.parseBoolean(enabled), new Date()));
	}
}
