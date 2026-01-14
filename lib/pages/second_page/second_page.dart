import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_project/app_controller/increment_decrement_controller.dart';

class SecondPage extends StatelessWidget {
   SecondPage({super.key});


  IncrementDecrementController controller = Get.put(IncrementDecrementController());

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Text("Get Builder, update method required"),
      SizedBox(height: 10,),
       GetBuilder<IncrementDecrementController>(builder: (con){
        return Text("${con.counter}");
        // return Text("${Get.find<IncrementDecrementController>().counter}");
       }),
      
          SizedBox(height: 30,),
          ElevatedButton(onPressed: Get.find<IncrementDecrementController>().decrement
          , child: Text("-")),
          SizedBox(height: 10,),
          Divider(),
          Text("GetX with reactive variable"),
      SizedBox(height: 10,),
          SizedBox(height: 10,),
          GetX<IncrementDecrementController>(builder: (con) {
        return Text("${con.counter1.value}");
      },),
          SizedBox(height: 10,),
          
       ElevatedButton(onPressed: Get.find<IncrementDecrementController>().reactDecrement
          , child: Text("-")),
          SizedBox(height: 10,),
          Divider(),
          Text("Obx  with reactive variable"),
      SizedBox(height: 10,),
           SizedBox(height: 10,),
          Obx(() {
        return Text("${controller.counter2.value}");
      },),
         
          SizedBox(height: 10,),
          
       ElevatedButton(onPressed: Get.find<IncrementDecrementController>().react2Decrement
          , child: Text("-")),
          SizedBox(height: 10,),
          
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text("privious Page")),
          
        ],
      ),)),
    );
  }
}