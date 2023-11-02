package com.poly.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entity.Category;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;

	@NotEmpty(message = "Không được để trống!")
	@Length(min = 5, max = 50, message = "Phải có từ 5 - 50  ký tự!")
	private String name;

	@NotNull(message = "Không được để trống!")
	private Double price;

	@NotEmpty(message = "Không được để trống!")
	private String description;

	@NotNull(message = "Không được để trống!")
	private MultipartFile img;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createDate = new Date();

	private Boolean available;

	// bi-directional many-to-one association to Category
	private Category category;

	@Override
	public String toString() {
		return "Product [id=" + id + "], Product [img=" + img + "]";
	}
}