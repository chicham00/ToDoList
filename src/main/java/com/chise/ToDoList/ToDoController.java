package com.chise.ToDoList;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ToDoController {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private static final Logger logger = LoggerFactory.getLogger(ToDoController.class);

	/**
	 * タスク一覧表示
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/todo", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		List<Map<String, Object>> ret = jdbcTemplate.queryForList("select * from task");
		for (Map<String, Object> map : ret) {
			System.out.println(map.get("id").toString() + "-" + map.get("name").toString());
		}
		return "todo";
	}

	/**
	 * 新規追加画面表示
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/todo/create", method = RequestMethod.GET)
	public String create(Locale locale, Model model) {
		return "create";
	}

	/**
	 * 新規追加処理
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/todo/create", method = RequestMethod.POST)
	public String store(Locale locale, Model model) {
		return "redirect:/todo";
	}

	/**
	 *編集画面表示
	 * @param locale
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/todo/{id}/edit", method = RequestMethod.GET)
	public String edit(Locale locale, Model model, @PathVariable Integer id) {
		return "edit";
	}

	/**
	 *編集処理
	 * @param locale
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/todo/{id}/edit", method = RequestMethod.POST)
	public String update(Locale locale, Model model, @PathVariable Integer id) {
		return "redirect:/todo";
	}

	/**
	 * 削除処理
	 * @param locale
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/todo/{id}/delete", method = RequestMethod.POST)
	public String destroy(Locale locale, Model model, @PathVariable Integer id) {

		return "redirect:/todo";
	}
}
