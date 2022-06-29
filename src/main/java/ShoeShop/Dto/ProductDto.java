package ShoeShop.Dto;

public class ProductDto {
	private int id_model;
	private int id_thuonghieu;
	private String ten_model;
	private String size;
	private double gia;
	private int id_color;
	private String color;
	private String img;
	public int getId_model() {
		return id_model;
	}
	public void setId_model(int id_model) {
		this.id_model = id_model;
	}
	public int getId_thuonghieu() {
		return id_thuonghieu;
	}
	public void setId_thuonghieu(int id_thuonghieu) {
		this.id_thuonghieu = id_thuonghieu;
	}
	public String getTen_model() {
		return ten_model;
	}
	public void setTen_model(String ten_model) {
		this.ten_model = ten_model;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public int getId_color() {
		return id_color;
	}
	public void setId_color(int id_color) {
		this.id_color = id_color;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
}
