package ShoeShop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductDtoMapper implements RowMapper<ProductDto>{

	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDto product = new ProductDto();
		product.setId_model(rs.getInt("id_model"));
		product.setId_thuonghieu(rs.getInt("id_thuonghieu"));
		product.setTen_model(rs.getString("ten_model"));
		product.setSize(rs.getString("size"));
		product.setGia(rs.getDouble("gia"));
		product.setId_color(rs.getInt("id_color"));
		product.setColor(rs.getString("color"));
		product.setImg(rs.getString("img"));
		return product;
	}

}
