
import 'package:dibyajyoti_technical_task/screen/widget/outstation/select_trip.dart';
import 'package:dibyajyoti_technical_task/screen/widget/vechilList/booking.dart';
import 'package:dibyajyoti_technical_task/screen/widget/vechilList/location.dart';
import 'package:dibyajyoti_technical_task/screen/widget/vechilList/vechil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../color.dart';
import '../data/list.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset("assets/images/technical_task_map.png",fit: BoxFit.cover,),
              ),
              Location_Vechil(),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Top Suggetion for you',style: TextStyle(color: MyColor.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:[
                        Text("Pick UP Date Time",style: TextStyle(fontSize:15, color: MyColor.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023, 8),
                                lastDate: DateTime(2025)
                            );
                          },
                          child: Container(
                            height: 50,
                            // width: 150,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: MyColor.black)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.calendar_month),
                                Text(DateFormat('dd-MM-yyyy hh:mm a'). format(DateTime. now()))
                              ],
                            ),
                          ),
                        ),
                      ]


                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                  itemBuilder: (context,index){
                    return Vechil(data: data[index],);
                  }
              ),
              Book_vechil()

            ],
          ),
        ),
      ),
    );
  }
}
