import 'package:flutter/material.dart';

import 'home.dart';

class Orderst extends StatelessWidget {
  String userid;
  String name;
  String phone;
  Orderst({super.key,required this.userid,required this.phone,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Home(name:name,phone: phone,userid: userid,)));
            },
            child: BackButton(color: Colors.black,)),
        title:  Text("Order Status",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
       centerTitle: true,
        bottom:PreferredSize(preferredSize: Size.zero, child: Text("16 Sept 2023",style: TextStyle(color: Colors.grey.shade800),)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 170,left:80),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img_20.png",scale: 2,),
            SizedBox(height: 50,),
            Image.asset("assets/img_21.png",scale: 2,),
            SizedBox(height: 10,),
            Text("In Progress...",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
            SizedBox(height: 10,),
            Text("Please kindly wait,we are still",style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),
            Text("processing your order",style: TextStyle(fontSize: 15,color: Colors.grey.shade600),)

          ],
        ),
      ),
    );
  }
}
