package com.cozashop.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer> {

	// Update trạng thái contact
		@Transactional
		@Modifying
		@Query("UPDATE Contact c SET c.enabled = ?1 WHERE c.id = ?2")
			int updateEnabledByContact(boolean enabled,int id);
	
}
