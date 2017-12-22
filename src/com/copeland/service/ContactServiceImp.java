package com.copeland.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.copeland.dao.ContactDao;
import com.copeland.model.Contact;

@Service
@Transactional
public class ContactServiceImp implements ContactService {
	
	@Autowired
    private ContactDao contactDao;

	@Override
	@Transactional
	public void addContact(Contact contact) {
		contactDao.addContact(contact);	
	}

	@Override
	@Transactional
	public List<Contact> getAllContacts() {
		return contactDao.getAllContacts();
	}

	@Override
	@Transactional
	public void deleteContact(Integer contactId) {
		contactDao.deleteContact(contactId);		
	}

	@Override
	public Contact getContact(int contactId) {
		return contactDao.getContact(contactId);
	}
	
    public void setContactDao(ContactDao contactDao) {
        this.contactDao = contactDao;
    }

}