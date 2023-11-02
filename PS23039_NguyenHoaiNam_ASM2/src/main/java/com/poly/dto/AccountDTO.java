package com.poly.dto;

import java.io.Serializable;

import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@NotBlank(message = "Không được để trống!")
	@Length(min = 5, max = 50, message = "Phải có từ 5 - 50  ký tự!")
	private String username;

	@NotBlank(message = "Không được để trống!")
	private String password;

	@NotBlank(message = "Không được để trống!")
	private String fullname;

	@NotBlank(message = "Không được để trống!")
	@Email(message = "Email không hợp lệ!")
	private String email;

	private MultipartFile img;

	private Boolean activated;

	private Boolean admin;

	private String token;

}
