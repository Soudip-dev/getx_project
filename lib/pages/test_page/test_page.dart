import 'package:get/state_manager.dart';

class TestPage extends GetxService {
  Future <TestPage> init()async{
    print('$runtimeType delays for 3 seconds before returning itself');
    await Future.delayed(Duration(seconds: 3));
    print("$runtimeType returned");
    return this;
  

  }

}