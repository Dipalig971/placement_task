import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement_task/controller/todo_controller.dart';
import 'package:placement_task/modal/todo_modal.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.put(TodoController());
     ThemeController themeController = Get.put(ThemeController());
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        actions: [
          Obx(() => IconButton(
            icon: Icon(todoController.isGridView.value ? Icons.list : Icons.grid_view),
            onPressed: todoController.toggleView,
          )),

              IconButton(
              icon:  Obx(() =>  Icon(themeController.isDarkMode.value ? Icons.light_mode_outlined : Icons.dark_mode)),
              onPressed:themeController.toggleTheme,
            ),
        ],
      ),

      body: Obx((){
        if(todoController.isLoading.value){
          return const Center(
            child:  CircularProgressIndicator(),
          );
        }
        return (todoController.isGridView.value)?GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: todoController.todo.length,
          itemBuilder: (context, index) {
            final todo = todoController.todo[index];
            return todoContainer(todo);
          },):ListView.builder(
          itemCount: todoController.todo.length,
          itemBuilder: (context, index) {
            final todo = todoController.todo[index];
            return todoContainer(todo);
          },
        );
      }),
    );
  }

  Widget todoContainer(TodoModal todo) {
    return Card(
      color: todo.completed ? Colors.green.shade100 : Colors.red.shade100,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title:Text(
            todo.title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ), 
          subtitle: Text(todo.completed ? 'Completed' : 'Pending',
              style: TextStyle(
                color: todo.completed ? Colors.green : Colors.red,
              )), 
          trailing: IconButton(onPressed: () {
            
          }, icon: Icon(Icons.bookmark_add_outlined)),
        ),
        
      ),
    );
      // Container(
      //       color: todo.completed! ? Colors.green[100] : Colors.red[100],
      //       padding: const EdgeInsets.all(10.0),
      //       margin: const EdgeInsets.symmetric(vertical: 4.0),
      //       child: Text(
      //         todo.title!,
      //         style: const TextStyle(
      //           fontSize: 16,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     );
  }
}





