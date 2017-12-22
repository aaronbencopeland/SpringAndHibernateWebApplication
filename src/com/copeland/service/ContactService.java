package com.copeland.service;

import java.util.List;
import com.copeland.model.Contact;

public interface ContactService {
	
    public void addContact(Contact contact);
    
    public List<Contact> getAllContacts();
 
    public void deleteContact(Integer contactId);
 
    public Contact getContact(int contactId);
 
}
