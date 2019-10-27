package com.cozashop.entities;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.cozashop.entities.Role.RoleName;

@Component("currentUser")
public class CurrentUser {

	public UserPrincipal get() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return (UserPrincipal) authentication.getPrincipal();
	}

	public boolean userHasAuthority(RoleName authority) {
		List<GrantedAuthority> authorities = extracted();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (authority.name().equals(grantedAuthority.getAuthority())) {
				return true;
			}
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	private List<GrantedAuthority> extracted() {
		return (List<GrantedAuthority>) this.get().getAuthorities();
	}
}