
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class IncrementDecrementController extends GetxController {
  RxInt counter1 = 0.obs;
  Rx<int> counter2 = 0.obs;
  
  var counter = 0;

  void increment() {
    counter++;
    
    update();
  }

  void decrement() {
    if(counter > 0){
      counter--;
    }
    update();
  }

  void reactIncrement(){
    counter1.value++;
  }

  void reactDecrement(){
    if(counter1.value > 0){
      counter1.value--;
    }
    
  }

   void react2Increment(){
    counter2.value++;
  }

  void react2Decrement(){
    if(counter2.value > 0){
      counter2.value--;
    }
    
  }
}



