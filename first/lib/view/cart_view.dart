import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constance.dart';

class CartView extends StatelessWidget {
  List<String> names = <String>['hana', 'hana', 'hana', 'hana', 'hana'];
  List<String> images = <String>[
    'asset/montre.jpg',
    'asset/montre.jpg',
    'asset/montre.jpg',
    'asset/montre.jpg',
    'asset/montre.jpg'
  ];
  List<int> price = <int>[123, 123, 123, 147, 159];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
              child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 140,
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[index],
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$ ${price[index].toString()}',
                            style: TextStyle(color: primaryColor),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 140,
                              color: Colors.grey.shade200,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Icon(
                                      Icons.minimize,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: names.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '\$ 2000',
                    style: TextStyle(fontSize: 22, color: primaryColor),
                  )
                ],
              ),
              Container(
                height: 100,
                width: 180,
                padding: EdgeInsets.all(20),
                child: MaterialButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10),
                  color: primaryColor,
                  onPressed: () {},
                  child: Text(
                    'CHECKOUT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
