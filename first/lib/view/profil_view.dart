import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(image: AssetImage('asset/profill.png')),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Hana', style: TextStyle(fontSize: 28
                      ),),
                      Text('Hana@gmail.com', style: TextStyle(fontSize: 20
                      ),)

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 100,),
            Container(
              child: MaterialButton(onPressed: () {},
              
              child: ListTile(
                title: Text("Edit Profile"),
                leading: Image.asset('asset/editprofil.png', width: 30, height: 30,),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),),
            ),
            SizedBox(height: 20,),
               Container(
              child: MaterialButton(onPressed: () {},
              
              child: ListTile(
                title: Text("Shipping Address"),
                leading: Image.asset('asset/localisation.png', width: 30, height: 30,),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),),
            ),
            SizedBox(height: 20,),
               Container(
              child: MaterialButton(onPressed: () {},
              
              child: ListTile(
                title: Text("Order History"),
                leading: Image.asset('asset/historique.png', width: 30, height: 30,),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),),
            ),
            SizedBox(height: 20,),
               Container(
              child: MaterialButton(onPressed: () {},
              
              child: ListTile(
                title: Text("Cards"),
                leading: Image.asset('asset/payment.png', width: 30, height: 30,),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),),
            ),
            SizedBox(height: 20,),
               Container(
              child: MaterialButton(onPressed: () {},
              
              child: ListTile(
                title: Text("Notification"),
                leading: Image.asset('asset/notification.png', width: 30, height: 30,),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),),
            ),
            SizedBox(height: 20,),
               Container(
              child: MaterialButton(onPressed: () {},
              
              child: ListTile(
                title: Text("LogOut"),
                leading: Image.asset('asset/logoutt.png', width: 30, height: 30,),
                trailing: Icon(Icons.navigate_next, color: Colors.black,),
              ),),
            ),
          
            SizedBox(height: 20,),
          ],
        ),
      ),
    ));
  }
}
