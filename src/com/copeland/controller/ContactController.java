package com.copeland.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.copeland.model.Contact;
import com.copeland.service.ContactService;

@Controller
public class ContactController {

  private static final Logger logger = Logger.getLogger(ContactController.class);
	 
  public ContactController() {
    System.out.println("ContactController()");    
  }
	 
  @Autowired    
  private ContactService contactService;
	 
  @RequestMapping(value = "/listOfContacts")
  public ModelAndView listContact(ModelAndView model) throws IOException {
    List<Contact> listContact = contactService.getAllContacts();
    model.addObject("listContact", listContact);
    model.setViewName("doctorandstaffpage");
    return model;
  }
	 
  @RequestMapping(value = "/newContact", method = RequestMethod.GET)
  public ModelAndView newContact(ModelAndView model) {
    Contact contact = new Contact();
    model.addObject("contact", contact);
    model.setViewName("contactform");
    return model;
  }
	 
  @RequestMapping(value = "/saveContact", method = RequestMethod.POST)
  public ModelAndView saveContact(@ModelAttribute Contact contact) {
    if (contact.getId() == 0) { 
      contactService.addContact(contact);
    } 
	return new ModelAndView("redirect:/");
  }
	 
  @RequestMapping(value = "/deleteContact", method = RequestMethod.GET)
  public ModelAndView deleteContact(HttpServletRequest request) {
	int contactId = Integer.parseInt(request.getParameter("id"));
	contactService.deleteContact(contactId);
	return new ModelAndView("redirect:/");
  }
	 
  /*@RequestMapping(value = "/editContact", method = RequestMethod.GET)
  public ModelAndView editContact(HttpServletRequest request) {
	int contactId = Integer.parseInt(request.getParameter("id"));
	Contact contact = contactService.getContact(contactId);
	ModelAndView model = new ModelAndView("contactform");
	model.addObject("contact", contact);
	 
	return model;
  }*/
}