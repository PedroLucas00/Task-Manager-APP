import 'package:task_manager/app/data/provider/api.dart';

class HomeRepository {
  final Api api;

  HomeRepository(this.api);

  getAll() {
    //return api.getAll();
  }

  getId(id) {
    return api.getUser(id);
  }

  delete(id) {
    return api.delete(id);
  }

  edit(obj) {
    //return api.edit(obj);
  }

  add(obj) {
    //return api.add(obj);
  }
}
