import 'package:flutter/material.dart';
import 'package:invoice/screen/secondscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blueAccent,
        title: Text('Invoice'),
        actions: [
          Padding(
            padding:EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: ()
              {
                Navigator.pushNamed(context, '/second');
              },
              child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.add,color: Colors.blue,)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, '/pdf');
      },
      child: Icon(Icons.picture_as_pdf),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          ...List.generate(product.length, (index) => productdetails(index)),
        ],
      ),
    );
  }

  Padding productdetails(int index) {
    return Padding(
          padding: EdgeInsets.all(15),
          child: Stack(
            children: [
              Container(
                height: 150,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.grey,
                      )
                    ]
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: [
                    Text('PRODUCT NAME :'),
                    SizedBox(width: 10,),
                    Text(product[index]['productname']),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10,top: 30),
                child: Row(
                  children: [
                    Text('PRICE :'),
                    SizedBox(width: 10,),
                    Text(product[index]['price']),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10,top: 50),
                child: Row(
                  children: [
                    Text('QUNTITY :'),
                    SizedBox(width: 10,),
                    Text(product[index]['quntity']),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 100,left: 20),
                child: Row(
                  children: [
                    InkWell(
                    onTap: (){
                      product.removeAt(index);
                      setState(() {

                      });
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.delete,color: Colors.white,),
                            Text('Delete',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit,color: Colors.white,),
                          Text('Edit',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        );
  }
}