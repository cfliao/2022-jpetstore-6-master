package jpetstore.web;

import org.mybatis.jpetstore.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/catalog")
public class CatalogController {

    @Autowired
    private CatalogService catalogService;

    @RequestMapping("/main")
    public String home() {
        return "catalog/Main";
    }

    @RequestMapping("/viewCategory")
    public String viewCategory(@RequestParam("categoryId") String categoryId, Model model) {
        model.addAttribute("productList", catalogService.getProductListByCategory(categoryId));
        model.addAttribute("category", catalogService.getCategory(categoryId));
        return "catalog/Category";
    }

    @RequestMapping("/viewProduct")
    public String viewProduct(@RequestParam("productId") String productId, Model model) {
        model.addAttribute("itemList", catalogService.getItemListByProduct(productId));
        model.addAttribute("product", catalogService.getProduct(productId));
        return "catalog/Product";
    }


}