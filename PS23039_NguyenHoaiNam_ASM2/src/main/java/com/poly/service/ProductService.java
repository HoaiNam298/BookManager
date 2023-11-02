package com.poly.service;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.dto.ProductDTO;
import com.poly.entity.Product;

public interface ProductService {

	void deleteById(Integer id);

	List<Product> findAll();

	Optional<Product> findById(Integer id);

	Page<Product> findAll(Integer page, Integer limit);

	Product save(ProductDTO productModel) throws IllegalAccessException, InvocationTargetException, ParseException;

	<S extends Product> S save(S entity);

	Page<Product> findAllByNameLike(String name, Pageable pageable);

	Page<Product> findByField(Integer page, Integer limit, String field, String name);

}