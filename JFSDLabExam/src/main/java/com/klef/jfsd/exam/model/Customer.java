package com.klef.jfsd.exam.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "customers")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long customerId;


	    private String name;
	    private String email;
	    private String phoneNumber;
	    private String address;
//	    private LocalDate dateOfBirth;
		public Long getCustomerId() {
			return customerId;
		}
		public void setCustomerId(Long customerId) {
			this.customerId = customerId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhoneNumber() {
			return phoneNumber;
		}
		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		@Override
		public String toString() {
			return "Customer [customerId=" + customerId + ", name=" + name + ", email=" + email + ", phoneNumber="
					+ phoneNumber + ", address=" + address + "]";
		}
//		public LocalDate getDateOfBirth() {
//			return dateOfBirth;
//		}
//		public void setDateOfBirth(LocalDate dateOfBirth) {
//			this.dateOfBirth = dateOfBirth;
//		}
}
