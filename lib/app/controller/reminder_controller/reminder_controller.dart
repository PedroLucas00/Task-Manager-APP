import 'package:get/get.dart';

class ReminderController extends GetxController {
  RxInt selectedMonth = 0.obs;

  List listOfMonths = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'Octuber',
    'November',
    'December'
  ];

  void DaysOfMonth(month){
    switch (month) {
      case 'January':case 'March':case 'May':case 'July':case 'August':case 'Octuber':case 'December':
        
        break;
      case 'April':case 'June':case 'September':case 'November':
        break;
      case 'February':
        break;    
      default:
    }
  }
}