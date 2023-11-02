package com.poly.service.impl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import javax.xml.bind.DatatypeConverter;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.poly.dao.AccountDAO;
import com.poly.dto.AccountDTO;
import com.poly.entity.Account;
import com.poly.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDAO dao;

	Account entity = new Account();

	@Override
	public <S extends Account> S save(S entity) {
		return dao.save(entity);
	}

	@Override
	public List<Account> findAll() {
		return dao.findAll();
	}

	@Override
	public Optional<Account> findById(String id) {
		return dao.findById(id);
	}

	@Override
	public void deleteById(String id) {
		dao.deleteById(id);
	}

	@Override
	public boolean existsById(String id) {
		return dao.existsById(id);
	}

	@Override
	public Page<Account> findAll(Integer page, Integer limit, String field) {
		if (field.equals("")) {
			Pageable pageable = PageRequest.of(page, limit, Sort.by(Direction.ASC, "username"));
			return dao.findAll(pageable);
		} else {
			Pageable pageable = PageRequest.of(page, limit, Sort.by(Direction.DESC, field));
			return dao.findAll(pageable);
		}
	}

	@Override
	public AccountDTO findByUsername(String username) {
		Account entity = dao.findByUsername(username);
		if (entity != null) {
			AccountDTO dto = new AccountDTO();
			BeanUtils.copyProperties(entity, dto);
			return dto;
		}
		return null;
	}

	@Override
	public AccountDTO save(AccountDTO dto) {
		Account entity = new Account();
		BeanUtils.copyProperties(dto, entity);
		entity.setPassword(dto.getPassword());
		entity = dao.save(entity);
		return dto;
	}

	public String setHashMD5(String password) throws NoSuchAlgorithmException {
//		byte[] helloBytes = password.getBytes(StandardCharsets.UTF_8);
//		return DatatypeConverter.printBase64Binary(helloBytes);
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(password.getBytes());
		byte[] digest = md.digest();
		return DatatypeConverter.printHexBinary(digest).toUpperCase();
	}

	public String getHashMD5(String password) throws NoSuchAlgorithmException {
		byte[] bytes = Base64.getDecoder().decode(setHashMD5(password));
		return new String(bytes);
	}

	public void updateToken(String token, String email) throws Exception {
		Account entity = dao.findByEmail(email);
		if (entity != null) {
			entity.setToken(token);
			dao.save(entity);
		} else {
			throw new Exception("Cannot find any account with email: " + email);
		}
	}

	public Account getByToken(String token) {
		return dao.findByToken(token);
	}

	public void updatePassword(Account entity, String newPassword) {
		entity.setPassword(newPassword);
		entity.setToken("");
		dao.save(entity);
	}
}
