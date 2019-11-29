package com.cozashop.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cozashop.entities.Product;
import com.cozashop.repository.InfoProductRepository;
import com.cozashop.util.ApiResponse;
import com.cozashop.util.ApiResponse.Status;
import com.cozashop.util.Helper;

import javassist.NotFoundException;

@Service
public class InfoProductService {

	@Autowired
	private InfoProductRepository infoProductRepository;

	@Autowired
	private CategoryService categoryService;

	private static String UPLOADED_FOLDER = "/static/web/images/Products/";

	public List<Product> findAll() {
		return infoProductRepository.findAllByCategory();
	}

	public Product findById(String id) {
		return infoProductRepository.findById(id).get();
	}
	
	public List<Product> findAllByCategoryNews(String id) {
		Pageable firstPageWithTwoElements = PageRequest.of(1, 4);
		return infoProductRepository.findAllByCategoryNews(id, firstPageWithTwoElements);
	}


	public long countProduct() {
		return infoProductRepository.count();
	}
	
	public String upload(MultipartFile file) throws IOException {
		if (file.isEmpty()) {
			return null;
		}
		String name = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		Path path = Paths.get(new ClassPathResource("").getFile().getAbsolutePath() + UPLOADED_FOLDER + name);
		Files.write(path, bytes);
		return name;
	}

	public ApiResponse save(Product product) {
		if(infoProductRepository.existsById(product.getId())) {
			return new ApiResponse(Status.warning,"Mã Sản Phẩm "+ product.getId()+" đã tồn tại",null) ;
		}
		if(product.getId().equals("") && product.getName().equals("") && product.getShortdescription().equals("")) {
			return new ApiResponse(Status.warning,"Không được thông tin sản phẩm ",null) ;
		}else if(product.getId().equals("") && product.getName().equals("") && !product.getShortdescription().equals("")) {
			return new ApiResponse(Status.warning,"-Không được để trống</br> + Mã Sản Phẩm</br> + Tên Sản Phẩm ",null) ;
		}else if(product.getId().equals("") && !product.getName().equals("") && product.getShortdescription().equals("")) {
			return new ApiResponse(Status.warning,"-Không được để trống</br> + Mã Sản Phẩm</br> + Mô Tả Sản Phẩm ",null);
		}else if(!product.getId().equals("") && product.getName().equals("") && product.getShortdescription().equals("")) {
			return new ApiResponse(Status.warning,"-Không được để trống</br> + Tên Sản Phẩm</br> + Mô Tả Sản Phẩm ",null) ;
		}else if(product.getId().equals("")) {
			return new ApiResponse(Status.warning,"Không được để trống mã sản phẩm ",null) ;
		}else if(product.getName().equals("")) {
			return new ApiResponse(Status.warning,"Không được để trống tên sản phẩm ",null) ;
		}else if(product.getShortdescription().equals("")) {
			return new ApiResponse(Status.warning,"Không được để trống mô tả sản phẩm ",null) ;
		}else if(product.getImage() == null || product.getImage2() == null || product.getImage3() == null) {
			return new ApiResponse(Status.warning,"Chưa chọn hình ảnh cho sản phẩm",null) ;
		}
		Product dataProduct = infoProductRepository.save(product);
		return new ApiResponse(Status.success,"Thêm Sản Phẩm" +product.getId()+" Thành Công",dataProduct) ;
	}

	public Product Update(Product product) {
		Product productUpdate = infoProductRepository.findById(product.getId()).get();
		productUpdate.setAmout(product.getAmout());
		productUpdate.setCategory(product.getCategory());
		productUpdate.setCreateAt(product.getCreateAt());
		productUpdate.setDescription(product.getDescription());
		productUpdate.setEnabled(product.isEnabled());
		productUpdate.setName(product.getName());
		productUpdate.setMaterial(product.getMaterial());
		productUpdate.setPrice(product.getPrice());
		productUpdate.setColor(product.getColor());
		productUpdate.setImage(product.getImage());
		productUpdate.setImage2(product.getImage2());
		productUpdate.setImage3(product.getImage3());
		productUpdate.setShortdescription(product.getShortdescription());
		;
		return infoProductRepository.save(productUpdate);
	}

	public Product finById(String id) throws NotFoundException {
		Optional<Product> opt = infoProductRepository.findById(id);
		if (!opt.isPresent()) {
			throw new NotFoundException("Not found id: " + id);
		}
		return opt.get();
	}

	public String delete(String id) {
		infoProductRepository.deleteById(id);
		return "a";
	}

	public List<Product> fillter(Direction der, String... field) {
		return infoProductRepository.findAll(new Sort(der, field));

	}

	public List<Product> findBySalaryRange(double start, double end, String field) {
		return infoProductRepository.findBySalaryRange(start, end, new Sort(Direction.ASC, field));
	}

	public List<Product> findAllByColor(String der, String field) {
		return infoProductRepository.findByPColor(der, new Sort(Direction.ASC, field));
	}

	public List<Product> findProducRD(String id) {
		return infoProductRepository.findProductRD(id);
	}

	@SuppressWarnings("unchecked")
	public Iterator<Product> crollProduct(int count, int page, String der, String field) {
		if (der == null && field == null) {
			Pageable firstPageWithTwoElements = PageRequest.of(page, count);
			return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
		} else {
			if (der.equals("ASC")) {
				Pageable firstPageWithTwoElements = PageRequest.of(page, count, new Sort(Direction.ASC, field));
				return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
			} else if (der.equals("DESC")) {
				Pageable firstPageWithTwoElements = PageRequest.of(page, count, new Sort(Direction.DESC, field));
				return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
			} else if (der.equals("findAll") && field.equals("price")) {
				Pageable firstPageWithTwoElements = PageRequest.of(page, count);
				return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
			} else {
				return infoProductRepository.findByCategoryProduct(der).iterator();
			}
		}
	}
}
