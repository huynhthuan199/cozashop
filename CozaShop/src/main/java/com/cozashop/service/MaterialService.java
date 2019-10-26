package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Material;
import com.cozashop.repository.MaterialRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Service
public class MaterialService {

	@Autowired
	private MaterialRepository materialRepository;
	
	public List<Material> finAll(){
		return materialRepository.findAll();
	}

	public Material finById(int id) {
		return materialRepository.getMaterial(id);
	}

	public int updateEnabled(boolean enabled, int id) {
		materialRepository.updateEnabled(enabled, id);
		return 1;
	}

	public List<Material> listMaterial() {
		return materialRepository.listMaterial();
	}


	public ApiResponse save(Material Material) {
		if(materialRepository.existsByName(Material.getName())) {
			return new ApiResponse(Status.warning, " Chất liệu : " + Material.getName() + " đã tồn tại trong hệ thống" );
		} else {
		 if(Material.getName().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống tên chất liệu ");
		}
		}
		materialRepository.save(Material);
		 return new ApiResponse(Status.success, "Thêm Thành Công...");
	}

	public ApiResponse update(Material Material) {
		if (Material.getName().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống tên chất liệu");
		}
		materialRepository.updateMaterial(Material.isEnabled(), Material.getName(), Material.getCreateAt(),
				Material.getId());
		return new ApiResponse(Status.success, "Update Thành Công...");
	}

	public int delete(int id) {
		materialRepository.deleteById(id);
		return 1;
	}
}
