package com.web.youtotwo.entity;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="motorcycles")
public class Motorcycles {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private long id;
	private String type;
	private String make;
	private String model;
	private int size;
	private int seat;
	private int level;
	private String image;
	@Transient
	MultipartFile file;
	public Motorcycles(){}

	public Motorcycles(int id, String type, String make, String model, int size, int seat, int level, String image, MultipartFile file) {
		super();
		this.id = id;
		this.type = type;
		this.make = make;
		this.model = model;
		this.size = size;
		this.seat = seat;
		this.level = level;
		this.image = image;
	
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}
	

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Motorcycles other = (Motorcycles) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Motorcycles [id=" + id + ", type=" + type + ", make=" + make + ", model=" + model + ", size=" + size
				+ ", seat=" + seat + ", level=" + level + ", file=" + file +", image="+image+"]";
	}

	


	
	

}
