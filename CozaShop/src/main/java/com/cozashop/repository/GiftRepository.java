package com.cozashop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cozashop.entities.Gift;

@Repository
public interface GiftRepository extends JpaRepository<Gift, Integer> {

}
