package com.cozashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cozashop.entities.Color;
import com.cozashop.entities.Gift;
import com.cozashop.repository.GiftRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;

@Service
public class GiftService {

	@Autowired GiftRepository giftRepository;
	
	
	public Gift finByCode(String code) {
		return giftRepository.findByCodeAndEnabled(code,true);
	}
	
	public List<Gift> finAll(){
		return giftRepository.findAll();
	}

	public Gift finById(int id) {
		return giftRepository.getcode(id);
	}

	public int updateEnabled(boolean enabled, int id) {
		giftRepository.updateEnabled(enabled, id);
		return 1;
	}


	public ApiResponse save(Gift gift) {
		if(giftRepository.existsByCode(gift.getCode())) {
			return new ApiResponse(Status.warning, " Mã: " + gift.getCode() + " đã tồn tại trong hệ thống" );
		} else {
		 if(gift.getName().equals("") && gift.getCode().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống Thông Tin");
		 }else if(gift.getName().equals("") && !gift.getCode().equals("")){
			 return new ApiResponse(Status.warning, "Không được để trống Tên");
		 }else if(!gift.getName().equals("")  && gift.getCode().equals("")){
			 return new ApiResponse(Status.warning, "Không được để trống Mã Code");
		 }
		}
		giftRepository.save(gift);
		 return new ApiResponse(Status.success, "Thêm Thành Công...");
	}

	public ApiResponse update(Gift gift) {
		 if(gift.getName().equals("")  && gift.getCode().equals("")) {
			return new ApiResponse(Status.warning, "Không được để trống Thông Tin");
		 }else if(gift.getName().equals("")  && !gift.getCode().equals("")){
			 return new ApiResponse(Status.warning, "Không được để trống Tiền và Tên");
		 }else if(!gift.getName().equals("")  && gift.getCode().equals("")){
			 return new ApiResponse(Status.warning, "Không được để trống Mã Code và Tiền");
		 }else if(gift.getName().equals("")  && gift.getCode().equals("")){
			 return new ApiResponse(Status.warning, "Không được để trống Mã Code và Tên");
		 }
		giftRepository.updategift(gift.isEnabled(), gift.getName(), gift.getCode(), gift.getMoney(),gift.getId());
		return new ApiResponse(Status.success, "Update Thành Công...");
	}

	public int delete(int id) {
		giftRepository.deleteById(id);
		return 1;
	}
}
