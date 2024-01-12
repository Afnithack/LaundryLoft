import 'package:flutter/material.dart';
import 'package:laundry/provider/Mainprovider.dart';
import 'package:provider/provider.dart';


import 'mainpage.dart';
import 'orderdtls.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue ='Picked up';
    return Scaffold(
      appBar: AppBar(
        leading:GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Mainpg1()));
            },
            child: BackButton(color: Colors.black,)),
        title: Text("Bookings",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23,color: Colors.black),),
        actions: [
          Image(image:AssetImage("assets/img_25.png",),height: 45,width: 50,),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
    Consumer<LaundryProvider>(
      builder: (context,value,child) {
        return Container(
          child: ListView.builder(
            itemCount: value.booklist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var item=value.booklist[index];
              return   Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,width: 330,decoration:BoxDecoration(
                        color: Color(0xff6F2DA8),borderRadius: BorderRadius.circular(12)
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                            Row(
                              children: [

                                Text("Name:",style: TextStyle(fontWeight: FontWeight.w600,fontSize:21,color: Colors.white),),
                                SizedBox(width: 20,),
                                Consumer<LaundryProvider>(
                                    builder: (context,value,child) {
                                      return Text(item.name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),);
                                    }
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [

                                Text("Phone:",style: TextStyle(fontWeight: FontWeight.w600,fontSize:20,color: Colors.white),),
                                SizedBox(width: 20,),
                                Consumer<LaundryProvider>(
                                    builder: (context,value,child) {
                                      return Text(item.phone,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.white),);
                                    }
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [

                                Text("Address:",style: TextStyle(fontWeight: FontWeight.w600,fontSize:21,color: Colors.white),),
                                SizedBox(width: 20,),
                                Consumer<LaundryProvider>(
                                    builder: (context,value,child) {
                                      return Text(item.address,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),);
                                    }
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text("Order Status:",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.white),),
                                SizedBox(width: 10,),
                                Container(height:30,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [BoxShadow(color: Colors.grey.shade700,blurRadius: 2,spreadRadius: 2)],color: Colors.white,
                                  ),
                                  child: DropdownButton<String>(value:dropdownValue,
                                      items: <String>['Picked up','In Process','On The Way','Delivered'].map<DropdownMenuItem<String>>
                                        ((String value){
                                        return DropdownMenuItem<String>(value: value,
                                          child: Center(
                                            child: Text(
                                              value,style: TextStyle(fontSize: 16,color: Colors.grey.shade900),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue){
                                        setState((){
                                          dropdownValue = newValue!;
                                        });
                                      }
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:25,),

                            Row(children: [
                              Image.asset("assets/img_23.png",scale:1.5,),
                              SizedBox(width: 20,),
                              Image.asset("assets/img_24.png",scale:1.5,),
                              SizedBox(width:60,),
                              Container( height:35,width:150,
                                decoration:BoxDecoration(borderRadius: BorderRadius.circular(22),color: Colors.white),
                                child: ElevatedButton(onPressed: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookingdtls(
                                    id: item.id,
                                    name: item.name,
                                    phone: item.phone,
                                    orderstatus: item.order_staus,
                                    orderdate: item.order_date,
                                    deliverydate: item.delivery_date,
                                    ordertime: item.order_time,
                                    paymentmethod: item.payment_method,
                                    status: item.status,

                                  )));
                                }, child: Text("Order Details",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black),)),
                              )
                            ],),
                            SizedBox(height:15,),
                            Center(child: Text(item.status,style: TextStyle(color: Colors.white,fontSize:21,fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),



                    ),
                  )

              );

          },),
        );
      }
    )

        ],
      ),
    );
  }
}
