package com.chise.ToDoList.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.chise.ToDoList.entity.Task;

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
		// SQL文を設定する
		String sql = "select * from task order by id";
		// データを取得する
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);

		// MapのListデータをTaskのListデータに再構築する
		List<Task> tasks = new ArrayList<Task>();
		for (Map<String, Object> map : list) {
			Task t = new Task();
			t.setId((Integer) map.get("id"));
			t.setName((String) map.get("name"));
			t.setCreated_at((Timestamp) map.get("created_at"));
			t.setUpdated_at((Timestamp) map.get("updated_at"));
			tasks.add(t);
		}
		// ビューで使用するためにセットする
		model.addAttribute("tasks", tasks);
		return "todo";
	}

	/**
	 * タスク新規追加画面
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/todo/create", method = RequestMethod.GET)
	public String store(Locale locale, Model model) {
		return "create";
	}

	/**
	 * タスク新規追加処理
	 * @param locale
	 * @param model
	 * @param name
	 * @return
	 */
	@RequestMapping(value = "/todo/create", method = RequestMethod.POST)
	public String store(Locale locale, Model model, @RequestParam("name") String name) {
		// SQL文を設定する
		String sql = "INSERT INTO task (name) VALUES (?)";

		// データをINSERTする
		jdbcTemplate.update(sql, name);

		return "redirect:/todo";
	}

	/**
	 *タスク編集画面
	 * @param locale
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/todo/{id}/edit", method = RequestMethod.GET)
	public String edit(Locale locale, Model model, @PathVariable Integer id) {
		// SQL文を設定する
		String sql = "select * from task where id = ?";

		// データを取得する
		Map<String, Object> map = jdbcTemplate.queryForMap(sql, id);

		// MapのデータをTaskに再構築する
		Task task = new Task();
		task.setId((Integer) map.get("id"));
		task.setName((String) map.get("name"));
		task.setCreated_at((Timestamp) map.get("created_at"));
		task.setUpdated_at((Timestamp) map.get("updated_at"));

		// ビューで使用するためにセットする
		model.addAttribute("task", task);
		return "edit";
	}

	/**
	 *タスク編集更新処理
	 * @param locale
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/todo/{id}/edit", method = RequestMethod.POST)
	public String update(Locale locale, Model model, @PathVariable Integer id, @RequestParam("name") String name) {
		// SQL文を設定する
		String sql = "UPDATE task SET name = ? WHERE id = ?";

		// データをUPDATEする
		jdbcTemplate.update(sql, name, id);
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
		// SQL文を設定する
		String sql = "DELETE FROM task WHERE id = ?";

		// データをDELETEする
		jdbcTemplate.update(sql, id);

		return "redirect:/todo";
	}
}
