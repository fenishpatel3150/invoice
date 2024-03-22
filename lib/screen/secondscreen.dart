
import 'package:flutter/material.dart';
class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

List product=[];

TextEditingController txtproductname =TextEditingController();
TextEditingController txtprice =TextEditingController();
TextEditingController txtquntity =TextEditingController();
class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Action',style: TextStyle(color: Colors.white),),

      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.only(left: 10),
            child: Container(
              height: 80,
              width: 340,
              child: TextField(
                controller:txtproductname ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'PRODUCT NAME ',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 10),
            child: Container(
              height: 80,
              width: 340,
              child: TextField(
                controller: txtprice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'PRICE ',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 10),
            child: Container(
              height: 80,
              width: 340,
              child: TextField(
                controller: txtquntity,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'QUNTITY',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 10),
            child: InkWell(

              onTap: (){
                Navigator.pushReplacementNamed(context, '/');
              Map ditail={
                'productname':txtproductname.text,
                'price':txtprice.text,
                'quntity':txtquntity.text,
              };
              product.add(ditail);{
                Navigator.of(context).pushNamed('edit').then((value){

                });
                }
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue
                ),
                child: Center(child: Text('Save',style: TextStyle(color: Colors.white),)),
              ),
            ),
          )
        ],
      ),
    ); ;
  }
}









