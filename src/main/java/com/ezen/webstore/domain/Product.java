package com.ezen.webstore.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.DecimalFormat;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AccessLevel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

//formatter:pff
@XmlRootElement
@Getter @Setter @EqualsAndHashCode
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	private String productId;
	private String name;
	@Setter(value = AccessLevel.NONE)
	private BigDecimal unitPrice;
	private String unitPriceStr;
	private String description;
	private String manufacturer;
	private String category;
	@Setter(value = AccessLevel.NONE)
	private long unitsInStock;
	private String unitsInStockStr;
	private long unitsInOrder;
	private boolean discontinued;
	private String condition;
	
	@Getter(value = AccessLevel.NONE)  
	@JsonIgnore
	private MultipartFile productImage;
	
	@Getter(value = AccessLevel.NONE)
	@JsonIgnore
	private MultipartFile productManual;
	
	
	public Product() {
		super();
	}

	public Product(String productId, 
			String name, 
			BigDecimal unitPrice) {
		this.productId = productId;
		this.name = name;
		this.setUnitPrice(unitPrice);
	}
	
	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
		DecimalFormat df = new DecimalFormat("#,###");
		this.unitPriceStr = df.format(unitPrice);
	}
	
	public void setUnitsInStock(long unitsInStock) {
		DecimalFormat df = new DecimalFormat("#,###");
		this.unitsInStock = unitsInStock;
		this.setUnitsInStockStr(df.format(unitsInStock));
	}
	@XmlTransient
	public MultipartFile getProductImage() {
		return getProductImage();
	}
	@XmlTransient
	public MultipartFile getProductManual() {
		return getProductImage();
	}
		

}

