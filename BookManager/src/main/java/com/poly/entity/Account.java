package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Accounts")
public class Account implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;

	@Column
	private String password;

	@Column
	private String fullname;

	@Column
	private String email;

	@Column
	private String img;

	@Column
	private boolean activated = true;

	@Column
	private boolean admin = false;

	@Column
	private String token;

	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> orders;
}
