package com.gym.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gym.model.Category;
import com.gym.model.Product;
import com.gym.service.CategoryService;
import com.gym.service.ProductService;



@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryservice;

	@RequestMapping(value="/admin/products")
	public ModelAndView getAllProducts(Model model){
		List<Product> listProducts=productService.listProducts();
		System.out.println(listProducts.get(0).getProductName());
		//productlist - logical view name [productlist.jsp]
		//products - model attribute [use this attribute in jsp]
		//products - List<Product> data 
		List<Category> listCategories=categoryservice.listCategories();
		model.addAttribute("listCategories", listCategories);
		model.addAttribute("listProducts", listProducts);
		return new ModelAndView("Product1");
		//JSTL and EL 
	}
	@RequestMapping("viewproducts")

	public ModelAndView selectByCategory(@RequestParam String searchCondition,Model model){



	List<Product> listproduct = productService.getProductsbasedonCatId(Integer.parseInt(searchCondition));

	model.addAttribute("listproduct", listproduct);

	return new ModelAndView("ViewProducts");
	}
	@RequestMapping("/admin/addpro")
	public String addProducts(@RequestParam("proname") String proname, @RequestParam("prodesc") String prodesc,  @RequestParam("price") int price,@RequestParam("stock") int stock,@RequestParam("categoryId") int catid,@RequestParam("img") MultipartFile filedet, ModelMap model) {
		Product product=new Product();
		product.setProductName("proname");
		product.setProdDesc("prodesc");
		product.setStock(stock);
		product.setPrice(price);
		product.setImg(filedet);
		System.out.println(catid+"-----------");
		product.setCategory(categoryservice.getCategory(catid));
		
		productService.addProduct(product);	
		
		String imagePath="E:\\java\\eclipse oxygen\\EquipFront\\src\\main\\resources\\images";
		imagePath=imagePath+String.valueOf(product.getProductId())+".jpg";
		File image=new File(imagePath);
		
	
	
		if(!filedet.isEmpty())
		{			
			try 
			{
				byte[] fileBuffer=filedet.getBytes();	
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			} catch (Exception e)
			{
				System.out.println("Exception Arised:"+e);
				e.printStackTrace();
			}		
		}
		else
		{
			System.out.println("Problem Occured in File Uploading");
		}
		
		
		
		List<Product> listProducts = productService.listProducts();
		List<Category> listCategories=categoryservice.listCategories();
		model.addAttribute("listCategories", listCategories);
		model.addAttribute("listProducts", listProducts);
		return "Product1";			
	}

	@RequestMapping("/admin/add")
	public String showProduct(Model m) {
		List<Product> listProducts = productService.listProducts();		
		List<Category> listCategories=categoryservice.listCategories();
		m.addAttribute("listCategories", listCategories);
		m.addAttribute("listProducts", listProducts);
		return "Product1";
	}
	
	@RequestMapping(value="/admin/UpdateProduct",method=RequestMethod.POST)
	public String updateProductInDB(@RequestParam("proid") int productId,@RequestParam("proname") String proname,@RequestParam("prodesc") String prodesc,@RequestParam("procost") int procost,@RequestParam("stock") int stock,Model m)
	{
		Product product=productService.getProduct(productId);
		product.setProductName(proname);
		product.setProdDesc(prodesc);
		product.setPrice(procost);
		product.setStock(stock);
		
		productService.updateProduct(product);
		List<Product> listProducts=productService.listProducts();
		m.addAttribute("listProducts",listProducts);
		return "Product1";
	}
	
	@RequestMapping("/admin/updateProduct/{productId}")
	public String updateProduct(@PathVariable("productId") int productId,Model m)
	{
		Product product=productService.getProduct(productId);		
		List<Product> listProducts=productService.listProducts();
		System.out.println("in product controller-------------");
		System.out.println(product.getProductName());
		System.out.println(listProducts.get(0).getProdDesc()); 
		m.addAttribute("listProducts",listProducts);
		m.addAttribute("productInfo",product);
		return "UpdateProduct";
	}
	
	@RequestMapping("/admin/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,Model m)
	{	Product product=productService.getProduct(productId);		
		productService.deleteProduct(product);		
		List<Product> listProducts=productService.listProducts();
		m.addAttribute("listProducts",listProducts);
		return "Product1";
	}
}

