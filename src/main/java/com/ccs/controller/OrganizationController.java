package com.ccs.controller;

import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ccs.dao.BlogsDao;
import com.ccs.dao.PersonDao;
import com.ccs.form.BlogForm;
import com.ccs.form.PersonForm;
import com.ccs.model.Blogs;
import com.ccs.model.Person;
import com.ccs.service.GmailQuickstart;
import com.ccs.service.MailMail;

@Controller
public class OrganizationController {
	
@Autowired
PersonDao personDao;

@Autowired
BlogsDao blogsDao;


@Autowired
MailMail mailMail; 

	@RequestMapping(value = "/orgservices", method = RequestMethod.GET)
	public ModelAndView orgservices(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("orgservices");

		return modelAndView;

	}

	@RequestMapping(value = "/orgcontactus", method = RequestMethod.GET)
	public ModelAndView orgcontactus(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("orgcontactus");

		return modelAndView;

	}

	@RequestMapping(value = "/orgaboutus", method = RequestMethod.GET)
	public ModelAndView orgaboutus(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("orgaboutus");

		return modelAndView;

	}

	// @RequestMapping(value = "/orghome.html/{name}/{theme}", method =
	// RequestMethod.GET)
	@RequestMapping(value = "/orghome", method = RequestMethod.GET)
	public ModelAndView orghome(HttpServletRequest request,
			@RequestParam String theme) {
		ModelAndView modelAndView = null;
		System.out.println("--- theme : " + theme);
		request.getSession().setAttribute("theme", theme);
		modelAndView = new ModelAndView("orghome");

		return modelAndView;

	}

	@RequestMapping(value = "/orghome/{name}/{theme}", method = RequestMethod.GET)
	public ModelAndView orghome(HttpServletRequest request,
			@PathVariable("name") String name,
			@PathVariable("theme") String theme) {
		ModelAndView modelAndView = null;
		System.out.println("--- name : " + name);
		request.getSession().setAttribute("theme", theme);
		if (name.equals("multipage")) {
			System.out.println("multipage");
			modelAndView = new ModelAndView("orghome");
		} else if (name.equals("singlePage")) {
			modelAndView = new ModelAndView("separatehome");
		} else if (name.equals("smallbusiness")) {
			modelAndView = new ModelAndView("smallbusinesshome");
		} else if (name.equals("restuarant")) {
			modelAndView = new ModelAndView("restauranthome");
		}

		return modelAndView;

	}
	
	@RequestMapping(value = "/blogs", method = RequestMethod.GET)
	public ModelAndView blogs(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("blogs");
		List<Blogs> blogs = (List<Blogs>)blogsDao.findAll();
		for(Blogs blog:blogs){
			System.out.println(blog.getTitle());
		}
		
		request.setAttribute("blogs", blogs);
		

		return modelAndView;

	}
	
	@RequestMapping(value = "/blogsall", method = RequestMethod.GET)
	public ModelAndView blogsall(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("blogsall");
		List<Blogs> blogs = (List<Blogs>)blogsDao.findAll();
		for(Blogs blog:blogs){
			System.out.println(blog.getTitle());
		}
		
		request.setAttribute("blogs", blogs);
		

		return modelAndView;

	}
	
	
	@RequestMapping(value = "/blogs/{blogurl}", method = RequestMethod.GET)
	public ModelAndView blog(HttpServletRequest request,@PathVariable String blogurl ) {
		ModelAndView modelAndView = null;
		System.out.println("Blog URL called : " + blogurl);
		modelAndView = new ModelAndView("sampleBlog");
		List<Blogs> blogs = (List<Blogs>)blogsDao.findByUrl(blogurl);
		Blogs blog= blogs.get(0);
		System.out.println(blog.getBlogText());
		request.setAttribute("blog", blog);
		
		
		
		request.setAttribute("blogs", blogs);
		return modelAndView;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("admin");

		return modelAndView;

	}
	
	@RequestMapping(value = "/sampleBlog", method = RequestMethod.GET)
	public ModelAndView sampleBlog(HttpServletRequest request) {
		ModelAndView modelAndView = null;

		modelAndView = new ModelAndView("sampleBlog");
		
		

		return modelAndView;

	}
	
	@RequestMapping(value = "/ccslogin", method = RequestMethod.GET)
	public ModelAndView ccslogin(HttpServletRequest request) {
		ModelAndView modelAndView = null;
		System.out.println("ccs login called");
		modelAndView = new ModelAndView("blogsall");
		
		List<Blogs> blogs = (List<Blogs>)blogsDao.findAll();
		for(Blogs blog:blogs){
			System.out.println(blog.getTitle());
		}
		
		request.setAttribute("blogs", blogs);
		

		return modelAndView;
		

		

	}
	
	@RequestMapping(value = "/saveCustomers", method = RequestMethod.POST)
	public ModelAndView saveCustomers(HttpServletRequest request,@ModelAttribute("personForm") PersonForm personForm) {
		ModelAndView modelAndView = null;
		System.out.println("saveCustomers called");
		modelAndView = new ModelAndView("customers");
		
		System.out.println(personForm.getName());
		System.out.println(personForm.getSurname());
		System.out.println(personForm.getEmail());
		
		Person peter = new Person(personForm.getName(),personForm.getSurname(),personForm.getEmail(),personForm.getPhone());
		

		// Add new Person records
		
		personDao.save(peter);

		/*// Count Person records
		System.out.println("Count Person records: " + dao.count());

		// Print all records
		List<Person> persons = (List<Person>) dao.findAll();
		for (Person person : persons) {
			System.out.println(person);
		}

		// Find Person by surname
		System.out.println("Find by surname 'Sagan': "	+ dao.findBySurname("Sagan"));

		// Update Person
		nasta.setName("Barbora");
		nasta.setSurname("Spotakova");
		dao.save(nasta);

		System.out.println("Find by id 2: " + dao.findOne(2L));

		// Remove record from Person
		dao.delete(2L);

		// And finally count records
		System.out.println("Count Person records: " + dao.count());*/
		return ccslogin(request);

	}
	
	@RequestMapping(value = "/sendMail", method = RequestMethod.POST)
	public ModelAndView sendMail(HttpServletRequest request,@ModelAttribute("personForm") PersonForm personForm) throws Exception {
		
		System.out.println(personForm.getMailSubject());
		
		
		

		
		/*mailMail.sendMail("ccs2288@gmail.com",
				"hunaidee007@gmail.com",
				"Test", 
				"<p>Respected Sir/Madam,</p><b>I hope this note finds you well.</b>");*/
		
		/*mailMail.sendMail("ccs2288@gmail.com",
				personForm.getMailTo(),
				personForm.getMailSubject(), 
				personForm.getMailText());*/
		
		//GmailQuickstart.main(null);
		return ccslogin(request);
	}
	
	@RequestMapping(value = "/saveBlog", method = RequestMethod.POST)
	public ModelAndView saveBlog(HttpServletRequest request,@ModelAttribute("blogForm") BlogForm blogForm) throws Exception {
		
		Blogs blogs = new Blogs();
		blogs.setTitle(blogForm.getTitle());
		blogs.setBlogText(blogForm.getBlogtext());
		blogs.setUrl(blogForm.getUrl());
		blogs.setAuthor("Ibrahim Merchant");
		System.out.println(blogForm.getTitle());
		System.out.println(blogForm.getBlogtext());
		blogs.setCreatedDate(new java.sql.Date(new Date().getTime()));
		blogs.setSummaryText(blogForm.getBlogtext().substring(0, 500));
		blogsDao.save(blogs)
;		return blogsall(request);
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView delete(HttpServletRequest request,@RequestParam(value="id")String id) throws Exception {
		
		Long longId=Long.parseLong(id);
		blogsDao.delete(longId);
;		return blogsall(request);
	}
	
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView products(HttpServletRequest request) {
		ModelAndView modelAndView = null;
		
		modelAndView = new ModelAndView("products");
		
	
		

		return modelAndView;
		

		

	}
	
	@RequestMapping(value = "/careers", method = RequestMethod.GET)
	public ModelAndView careers(HttpServletRequest request) {
		ModelAndView modelAndView = null;
		
		modelAndView = new ModelAndView("careers");
		
	
		

		return modelAndView;
		

		

	}
	
	@RequestMapping(value = "/remote-support", method = RequestMethod.GET)
	public ModelAndView remote(HttpServletRequest request) {
		ModelAndView modelAndView = null;
		modelAndView = new ModelAndView("remote");
		return modelAndView;
	}
	
	@RequestMapping(value = "/cctv-sales-services", method = RequestMethod.GET)
	public ModelAndView cctvsecurity(HttpServletRequest request) {
		ModelAndView modelAndView = null;
		modelAndView = new ModelAndView("cctvsecurity");
		return modelAndView;
	}
	
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public ModelAndView support(HttpServletRequest request) {
		ModelAndView modelAndView = null;
		
		modelAndView = new ModelAndView("support");
		
	
		

		return modelAndView;
		

		

	}
	
	
	
	
}
