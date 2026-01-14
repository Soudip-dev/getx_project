import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:getx_project/app_controller/increment_decrement_controller.dart';
import 'package:getx_project/pages/second_page/second_page.dart';

class FirstPage extends StatelessWidget {
   FirstPage({super.key});
  IncrementDecrementController controller = Get.put(IncrementDecrementController());
  

  // IncrementDecrementController controller2 = IncrementDecrementController();

  
  
 
  @override
  Widget build(BuildContext context) {
    // print("value : ${controller.counter}");
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
          ElevatedButton(onPressed: Get.find<IncrementDecrementController>().increment
          , child: Text("+")),
          SizedBox(height: 10,),
          Divider(),
          Text("GetX with reactive variable"),
      SizedBox(height: 10,),
          SizedBox(height: 10,),
          GetX<IncrementDecrementController>(builder: (con) {
        return Text("${con.counter1.value}");
      },),
          SizedBox(height: 10,),
          
       ElevatedButton(onPressed: Get.find<IncrementDecrementController>().reactIncrement
          , child: Text("+")),
          SizedBox(height: 10,),
          Divider(),
          Text("Obx  with reactive variable"),
      SizedBox(height: 10,),
           SizedBox(height: 10,),
          Obx(() {
        // return Text("${controller.counter2.value}");
        return Text("${Get.find<IncrementDecrementController>().counter2.value}");
      },),
         
          SizedBox(height: 10,),
          
       ElevatedButton(onPressed: Get.find<IncrementDecrementController>().react2Increment
          , child: Text("+")),
          SizedBox(height: 10,),
          
          ElevatedButton(onPressed: (){
            // Get.snackbar("Hi", "Message",backgroundColor: Colors.green,colorText: Colors.white);
            // Get.defaultDialog(title: "Hi", middleText: "Message",
            // backgroundColor: Colors.green,);

            Get.to(SecondPage());
            // Get.changeTheme(ThemeData.light());
            
            
          }, child: Text("Next Page")),
          
        ],
      ),)),
    );
  }
}