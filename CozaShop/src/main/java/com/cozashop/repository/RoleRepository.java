package com.cozashop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cozashop.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>  {

}
