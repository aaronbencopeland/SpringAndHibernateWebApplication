package com.copeland.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.copeland.model.Contact;

@Repository
public class ContactDaoImp implements ContactDao {
	
  @Autowired 
  private SessionFactory sessionFactory; 

  @Override
  public void addContact(Contact contact) {
    sessionFactory.getCurrentSession().saveOrUpdate(contact);	
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<Contact> getAllContacts() {
    return sessionFactory.getCurrentSession().createQuery("from Contact").list();
  }

  @Override
  public void deleteContact(Integer contactId) {
    Contact contact = (Contact) sessionFactory.getCurrentSession().load(
	Contact.class, contactId);
	if (null != contact) {
	  this.sessionFactory.getCurrentSession().delete(contact);
	}	
  }

  @Override
  public Contact getContact(int contactId) {
    return (Contact) sessionFactory.getCurrentSession().get(Contact.class, contactId);
  }

}