package ShoeShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShoeShop.Dao.MenuDao;
import ShoeShop.Dao.ProductDao;
import ShoeShop.Dto.ProductDto;
import ShoeShop.Entity.Menu;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private ProductDao productDao;
	@Autowired
	private MenuDao menuDao;

	public List<ProductDto> GetDataProduct() {
		List<ProductDto> listProduct = productDao.GetDataProduct();
		return listProduct;
	}

	public List<Menu> GetDataMenu() {
		return menuDao.GetDataMenu();
	}
	


}
