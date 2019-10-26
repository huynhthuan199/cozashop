package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.cozashop.entities.Color;
import com.cozashop.repository.ColorRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Service
public class ColorService {

	@Autowired
	private ColorRepository colorRepository;
	
	public List<Color> finAll(){
		return colorRepository.findAll();
	}

	public Color finById(int id) {
		return colorRepository.getcolor(id);
	}

	public int updateEnabled(boolean enabled, int id) {
		colorRepository.updateEnabled(enabled, id);
		return 1;
	}

	public List<Color> listcolor() {
		return colorRepository.listcolor();
	}


	public ApiResponse save(Color color) {
		if(colorRepository.existsByName(color.getName())) {
			return new ApiResponse(Status.warning, " Mã: " + color.getName() + " đã tồn tại trong hệ thống" );
		} else {
		 if(color.getName().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống tên màu sắc ");
		}
		}
		colorRepository.save(color);
		 return new ApiResponse(Status.success, "Thêm Thành Công...");
	}

	public ApiResponse update(Color color) {
		if (color.getName().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống tên màu sắc ");
		}
		colorRepository.updatecolor(color.isEnabled(), color.getName(), color.getCreateAt(),
				color.getId());
		return new ApiResponse(Status.success, "Update Thành Công...");
	}

	public int delete(int id) {
		colorRepository.deleteById(id);
		return 1;
	}
}
