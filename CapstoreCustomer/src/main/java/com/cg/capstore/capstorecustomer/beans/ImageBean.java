package com.cg.capstore.capstorecustomer.beans;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ImageBean {
	
	private String imageId;
	private Byte[] image;
	private String imageName;
	private String imageType;
	
	public String getImageId() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}
	public Byte[] getImage() {
		return image;
	}
	public void setImage(Byte[] image) {
		this.image = image;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImageType() {
		return imageType;
	}
	public void setImageType(String imageType) {
		this.imageType = imageType;
	}
	public ImageBean(String imageId, Byte[] image, String imageName, String imageType) {
		super();
		this.imageId = imageId;
		this.image = image;
		this.imageName = imageName;
		this.imageType = imageType;
	}
	public ImageBean() {
		super();
	}
	
}
