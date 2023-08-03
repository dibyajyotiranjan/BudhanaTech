
import 'package:dibyajyoti_technical_task/color.dart';
import 'package:dibyajyoti_technical_task/screen/widget/cityCab.dart';
import 'package:dibyajyoti_technical_task/screen/widget/outstation.dart';
import 'package:dibyajyoti_technical_task/screen/widget/rental.dart';
import 'package:flutter/material.dart';

class CabtoHome extends StatefulWidget {
  const CabtoHome({super.key});

  @override
  State<CabtoHome> createState() => _CabtoHomeState();
}

class _CabtoHomeState extends State<CabtoHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),

      appBar: AppBar(
        backgroundColor: MyColor.yellow,
        title: Text("CABTO",style: TextStyle(fontFamily: 'AlumniSans-Regular'),),
      ),
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(
                height: 150,
              width: double.infinity,
              child: Image.asset("assets/images/technical_task_map.png",fit: BoxFit.cover,)),
            SizedBox(
              height: 80,
              child: TabBar(
                padding: EdgeInsets.zero,
                indicatorColor: MyColor.black,
                labelColor: MyColor.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2),
               indicatorWeight: 5,
               //dividerColor: MyColor.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text:"CityCab",
                      icon: Icon(Icons.directions_car_outlined)
                  ),
                  Tab(
                    text: "Rental",
                    icon: Icon(Icons.car_rental),
                  ),
                  Tab(
                    text: "OutStation",
                    icon: Icon(Icons.family_restroom),
                  )
                ],
              ),
            ),
            Divider(
              color: MyColor.grey,
              indent: 1,
              endIndent: 0,
              height: 5,

            ),
            Expanded(
              child: TabBarView(
                children: [
                  CityCab(),
                  Rental(),
                  OutStation()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
