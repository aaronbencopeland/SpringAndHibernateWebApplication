
package com.copeland.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


//@Configuration
//@ComponentScan("com.copeland.service")
@Entity
@Table(name="CONTACT")
public class Contact implements Serializable {

	private static final long serialVersionUID = -2858812194585727985L;

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	@Column(name="firstName")
	String firstName;
	
	@Column(name="lastName")
	String lastName;
	
	@Column(name="telephone")
	String telephone;
	
	@Column(name="email")
	String email;
	
	@Column(name="message")
	String message;
	
	@Column(name="created")
	String created;
	
	public Contact() {
      super();
    }
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	public String getCreated() {
		return created;
	}
	
	public void setCreated(String created) {
		this.created = created;
	}

}

/*

CREATE TABLE CONTACT
(
  id          INT PRIMARY KEY AUTO_INCREMENT,
  firstname   VARCHAR(30),
  lastname    VARCHAR(30),
  telephone   VARCHAR(15),
  email       VARCHAR(30),
  message     VARCHAR(10000),
  created     TIMESTAMP DEFAULT NOW()    
);

*/

