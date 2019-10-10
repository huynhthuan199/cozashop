package com.cozashop.entities;

import java.io.Serializable;
import java.util.Date;

public class BaseEntity implements Serializable {
	
	protected Date createAt = new Date();
	protected boolean enabled = true;

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

}
