package com.cozashop.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "users")
public class User extends BaseEntity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String name;
	private String password;
	private String image;
	private String email;
	boolean rules;
	
	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private Collection<News> news;
	
	@JsonIgnore
	@ManyToMany
    @JoinTable(
            name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
	private Set<Role> roles;
	public User() {
		super();
	}

	public User(int id, String username, String name, String password,String email, boolean rules,boolean enabled) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.password = password;
		this.email = email;
		this.rules = rules;
		this.enabled = enabled;
	}

	public User(String username, String name, String password,String email, boolean rules,boolean enabled,Date createAt) {
		super();
		this.username = username;
		this.name = name;
		this.password = password;
		this.email = email;
		this.rules = rules;
		this.enabled = enabled;
		this.createAt = createAt;
	}
	

	public User(String username, String name, String password,String email,String image, boolean rules,boolean enabled,Date createAt) {
		super();
		this.username = username;
		this.name = name;
		this.password = password;
		this.email = email;
		this.image = image;
		this.rules = rules;
		this.enabled = enabled;
		this.createAt = createAt;
	}

	
	
	public Collection<News> getNews() {
		return news;
	}

	public void setNews(Collection<News> news) {
		this.news = news;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isRules() {
		return rules;
	}

	public void setRules(boolean rules) {
		this.rules = rules;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
