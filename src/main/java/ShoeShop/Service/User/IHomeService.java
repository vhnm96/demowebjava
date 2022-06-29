package ShoeShop.Service.User;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShoeShop.Dto.ProductDto;
import ShoeShop.Entity.Menu;
@Service
public interface IHomeService {
	@Autowired
	public List<ProductDto> GetDataProduct();
	@Autowired
	public List<Menu> GetDataMenu();
}
