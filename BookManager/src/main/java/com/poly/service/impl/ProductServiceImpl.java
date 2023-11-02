package com.poly.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.poly.dao.ProductDAO;
import com.poly.dto.ProductDTO;
import com.poly.entity.Product;
import com.poly.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO dao;

	Boolean count = true;

	@Override
	public <S extends Product> S save(S entity) {
		return dao.save(entity);
	}

	@Override
	public List<Product> findAll() {
		return dao.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		dao.deleteById(id);
	}

	@Override
	public Optional<Product> findById(Integer id) {
		return dao.findById(id);
	}

	@Override
	public Page<Product> findAll(Integer page, Integer limit) {
		Pageable pageable = PageRequest.of(page, limit);
		return dao.findAll(pageable);
	}

	@Override
	public Page<Product> findByField(Integer page, Integer limit, String field, String name) {
		if (!name.isEmpty()) {
			Pageable pageable = PageRequest.of(page, limit, Sort.by(Direction.ASC, "id"));
			return dao.findAllByNameLike(name, pageable);
		} else if (field.equals("")) {
			Pageable pageable = PageRequest.of(page, limit);
			return dao.findAll(pageable);
		} else {
			if (count) {
				count = false;
				Pageable pageable = PageRequest.of(page, limit, Sort.by(Direction.ASC, field));
				return dao.findAll(pageable);
			} else {
				count = true;
				Pageable pageable = PageRequest.of(page, limit, Sort.by(Direction.DESC, field));
				return dao.findAll(pageable);
			}
		}
	}

	@Override
	public Product save(ProductDTO productModel)
			throws IllegalAccessException, InvocationTargetException, ParseException {
		Product product = new Product();
		BeanUtils.copyProperties(product, productModel);
		String localDate = LocalDate.now().toString();
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(localDate);
		product.setCreateDate(date);
		product.setImg(productModel.getImg().getOriginalFilename());
		return dao.save(product);
	}

	@Override
	public Page<Product> findAllByNameLike(String name, Pageable pageable) {
		return dao.findAllByNameLike(name, pageable);
	}

}