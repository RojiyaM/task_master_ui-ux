import 'package:get/get.dart';
import 'package:run/db/db_helper.dart';
import 'package:run/models/add_task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  var taskList = <AddTask>[].obs;

  Future<int> addTask({AddTask? task}) async {
    return await DBHelper.insert(task);
  }

  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskList
        .assignAll(tasks.map((data) => new AddTask.fromJson(data)).toList());
  }

  void delete(AddTask task) {
    var val = DBHelper.delete(task);
    print(val);
    getTasks();
  }

  void markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTasks();
  }
}
