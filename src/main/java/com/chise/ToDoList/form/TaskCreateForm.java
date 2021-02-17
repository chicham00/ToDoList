package com.chise.ToDoList.form;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class TaskCreateForm {
	private static final long serialVersionUID = 1L,

			min = 1, max = 256;
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
