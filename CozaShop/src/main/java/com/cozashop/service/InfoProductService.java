package com.cozashop.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

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

	public Product save(Product product) {
		return infoProductRepository.save(product);
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
			System.out.println(der);
			if (der.equals("ASC")) {
				Pageable firstPageWithTwoElements = PageRequest.of(page, count, new Sort(Direction.ASC, field));
				return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
			} else if (der.equals("DESC")) {
				Pageable firstPageWithTwoElements = PageRequest.of(page, count, new Sort(Direction.DESC, field));
				return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
			} else if (der.equals("findAll") && field.equals("price")) {
				System.out.println("a");
				Pageable firstPageWithTwoElements = PageRequest.of(page, count);
				return infoProductRepository.findAllByCategory(firstPageWithTwoElements).iterator();
			} else {
				return infoProductRepository.findByCategoryProduct(der).iterator();
			}
		}
	}
}
