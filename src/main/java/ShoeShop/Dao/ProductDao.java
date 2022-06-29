package ShoeShop.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import ShoeShop.Dto.ProductDto;
import ShoeShop.Dto.ProductDtoMapper;

@Repository
public class ProductDao extends BaseDao {
	
	private String SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id_model ");
		sql.append(",p.id_thuonghieu ");
		sql.append(",P.ten_model ");
		sql.append(",p.size ");
		sql.append(",p.gia ");
		sql.append(",c.id_color ");
		sql.append(",c.color ");
		sql.append(",c.img ");
		sql.append("FROM ");
		sql.append("model AS p ");
		sql.append("INNER JOIN ");
		sql.append("color AS c ");
		sql.append("ON p.id_model = c.id_model ");
		sql.append("GROUP BY p.id_model,c.id_model;");
		return sql.toString();
	}
	
	public List<ProductDto> GetDataProduct(){
		String sql = SqlString();
		List<ProductDto> listProduct = _jdbcTemplate.query(sql, new ProductDtoMapper());
		return listProduct;
	}
}
