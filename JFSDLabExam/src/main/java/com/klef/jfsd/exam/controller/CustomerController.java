package com.klef.jfsd.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.klef.jfsd.exam.model.Customer;
import com.klef.jfsd.exam.repository.CustomerRepository;
import com.klef.jfsd.exam.service.CustomerService;

@RestController
@RequestMapping("/api/customers")
public class CustomerController {

	@Autowired
    private CustomerService customerService;
	private CustomerRepository customerRepository;
	
	@GetMapping("/")
	  public String main() 
	  {
		  return "index";
	  }
	
	@GetMapping("/viewcustomers")
    public String viewCustomers(Model model) {
        List<Customer> customers = customerRepository.findAll();
        model.addAttribute("customerdata", customers);
        return "viewcustomers"; // Name of the JSP file without extension
    }
	
	
	@PutMapping("/{id}")
    public Customer updateCustomer(
            @PathVariable Long id,
            @RequestParam String name,
            @RequestParam String address) {
        return customerService.updateCustomer(id, name, address);
    }
}
