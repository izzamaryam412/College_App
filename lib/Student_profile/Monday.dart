import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Monday extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrNames=['DBMS','OS','Break','Arabic',''];
    var number=['8:00AM - 9:00AM','9:00AM - 10:00AM','10:00AM - 10:30AM','10:30AM - 12:00PM',''];
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Monday',style: TextStyle(color: Colors.white),),
            backgroundColor: Color(0xFF0077B6),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.separated(itemBuilder:(context,index){
              return ListTile(
                title: Text(arrNames[index],style: TextStyle(color: Color(0xFF0077B6),),),
                subtitle: Text(number[index],style: TextStyle(color: Color(0xFF0077B6),),),
              );
            },
              separatorBuilder: (context,index){
                return Divider(
                  color: Color(0xFF0077B6),
                  height: 20,
                  thickness: 2,
                );
              },
              itemCount: arrNames.length,
            ),
          )
      ),
    );
  }
}