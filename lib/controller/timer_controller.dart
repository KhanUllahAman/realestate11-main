import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TimerController extends GetxController {
  var currentTime = "01h : 30m : 05s".obs;
  final String initialTime = "01h : 30m : 05s";

  void updateTime() {
    Future.delayed(Duration(seconds: 1), () {
      currentTime.value = _calculateNewTime(currentTime.value);
      updateTime();
    });
  }

  String _calculateNewTime(String oldTime) {
    var parts = oldTime.split(' : ');
    var hours = int.parse(parts[0].substring(0, 2));
    var minutes = int.parse(parts[1].substring(0, 2));
    var seconds = int.parse(parts[2].substring(0, 2));

    seconds++;

    if (seconds >= 60) {
      seconds = 0;
      minutes++;
      if (minutes >= 60) {
        minutes = 0;
        hours++;
        if (hours >= 24) {
          hours = 0;
        }
      }
    }
    if (hours == 0 && minutes == 0 && seconds == 0) {
      return initialTime;
    }

    return '${hours.toString().padLeft(2, '0')}h : ${minutes.toString().padLeft(2, '0')}m : ${seconds.toString().padLeft(2, '0')}s';
  }
}
