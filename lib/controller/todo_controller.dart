import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement_task/helper/todo_helper.dart';
import 'package:placement_task/modal/todo_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadTheme();
    toggleTheme();
  }
  void toggleTheme() async {
    isDarkMode.value = !isDarkMode.value;
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', isDarkMode.value);
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool('isDarkMode') ?? false;
  }
}

class TodoController extends GetxController{

  var isGridView = false.obs;

  RxBool isLoading = false.obs;
  List<TodoModal> todoList = [];

  List<TodoModal> get todo => todoList;

  TodoController(){
    fetchData();
  }

  Future<void> fetchData() async {
    isLoading.value= true;
    String json = await ApiService()
        .callApi('https://jsonplaceholder.typicode.com/todos');
    List data = await jsonDecode(json);
    todoList = data.map((e) => TodoModal.fromJson(e)).toList();
    isLoading.value = false;
  }

  void toggleView() async {
    isGridView.value = !isGridView.value;
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isGridView', isGridView.value);
  }

  Future<void> loadViewPreference() async {
    final prefs = await SharedPreferences.getInstance();
    isGridView.value = prefs.getBool('isGridView') ?? false;
  }

}