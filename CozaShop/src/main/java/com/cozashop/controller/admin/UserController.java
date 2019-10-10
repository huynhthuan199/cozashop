package com.cozashop.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cozashop.service.UserService;

@Controller
@RequestMapping("/admin/")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("user")
	public String index(ModelMap model) {
		model.addAttribute("listusers", userService.findAllByEnabled(true));
		return "admin/user";
	}
	
	// Đổ dữ liệu vào các textField
		@GetMapping(value = "user",params = "edit")
		public String edit(ModelMap model, HttpSession http, @RequestParam("id") int id) {
			model.addAttribute("editID", userService.findById(id));
			model.addAttribute("listusers", userService.findAll());
			return "admin/user";
		}
		
//	// Thêm mới
//		@RequestMapping(params = "btnInsert", method = RequestMethod.POST)
//		public ModelAndView insert(ModelMap model,
//				@RequestParam("showid") String id,
//				@RequestParam("pass") String pass,
//				@RequestParam("name") String name,
//				@RequestParam("rules") String rules,
//				HttpSession session) {
//			boolean check = userRepository.insert(id, pass, name, rules);
//			if (check) {
//				model.addAttribute("message", "Thêm thành Công !");
//			} else {
//				model.addAttribute("message", "Thêm Thất Bại !");
//			}
//			session.setAttribute("active", "user");
//			model.addAttribute("listusers", userRepository.getUsers());
//			return new ModelAndView("admin/layoutadmin");
//		}
//		
//	// Xóa
//		@RequestMapping(params = "btnDelete", method = RequestMethod.POST)
//		public ModelAndView delete(ModelMap model, @RequestParam("showid") String id, HttpSession session) {
//			boolean check = userRepository.delete(id);
//			if (check) {
//				model.addAttribute("message", "Xóa Thành Công !");
//			} else {
//				model.addAttribute("message", "Xóa Thất Bại !");
//			}
//			session.setAttribute("active", "user");
//			model.addAttribute("listusers", userRepository.getUsers());
//			return new ModelAndView("admin/layoutadmin");
//		}
//		
//	// Sửa thông tin.
//		@RequestMapping(params = "btnUpdate", method = RequestMethod.POST)
//		public ModelAndView update(ModelMap model,
//				@RequestParam("showid") String id,
//				@RequestParam("pass") String pass,
//				@RequestParam("name") String name,
//				@RequestParam("rules") String rules,
//				@RequestParam("txtSearch") String search,
//				HttpSession session) {
////			biến check
//			boolean ruleUpdate = Boolean.parseBoolean(rules);
//			boolean check = userRepository.update(new Users(id, pass, name, ruleUpdate));
//			if (check) {
//				model.addAttribute("message", "Sửa thành Công !");
//			} else if (!check) {
//				model.addAttribute("message", "Sửa Thất Bại !");
//			}
//			session.setAttribute("txtSearch", "");
//			session.setAttribute("active", "user");
//			model.addAttribute("listsers", userRepository.getUsers());
//			return new ModelAndView("admin/layoutadmin");
//		}
//		
////		Tìm kiếm.
//		@RequestMapping(params = "btnSearch", method = RequestMethod.POST)
//		public ModelAndView search(
//				@RequestParam("txtSearch") String id,
//				ModelMap model,
//				HttpSession session) {
//			Users user = userRepository.findById(id);
//			if (user != null) {	
//				model.addAttribute("txtSearch",id);	
//				model.addAttribute("listuser",user);
//				model.addAttribute("message", "Có Thông Tin Tìm Kiếm !");
//			} else if(user == null) {
//				model.addAttribute("message", "Không Thông Tin Tìm Kiếm !");
//				model.addAttribute("listusers", userRepository.getUsers());
//			}
//			session.setAttribute("active", "user");
//			return new ModelAndView("admin/layoutadmin");
//		}
}
