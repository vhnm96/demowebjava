package ShoeShop.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {

	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		_mvShare.addObject("product", _homeService.GetDataProduct());
		_mvShare.setViewName("user/homepage");
		return _mvShare;
	}
	
	  @RequestMapping(value = {"/shop" }) 
	  public ModelAndView Homepage() {
	  _mvShare.addObject("product",_homeService.GetDataProduct());
	  _mvShare.setViewName("user/index"); 
	  return _mvShare;
	 }
	  @RequestMapping(value = {"/single" }) 
	  public ModelAndView Single() {
	  _mvShare.addObject("product",_homeService.GetDataProduct());
	  _mvShare.setViewName("user/product/single");
	  return _mvShare;
	 }
	  @RequestMapping(value = {"/checkout" }) 
	  public ModelAndView CheckOut() {
	  _mvShare.addObject("product",_homeService.GetDataProduct());
	  _mvShare.setViewName("user/product/checkout");
	  return _mvShare;
	 }
}
