
import 'package:dibyajyoti_technical_task/screen/widget/vechilList/vechil.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class Vechil_List extends StatelessWidget {
  const Vechil_List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_outlined),
        ),
        backgroundColor: MyColor.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset("assets/images/technical_task_map.png"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
                itemBuilder: (context,index){
                  return Vechil();
                }
            ),
          ),
        ],
      ),
    );
  }
}
