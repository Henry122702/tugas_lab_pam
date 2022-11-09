import 'package:flutter/material.dart';

class DaftarList extends StatefulWidget {
  const DaftarList({super.key});

  @override
  State<DaftarList> createState() => _ListStateView();
}
class _ListStateView extends State<DaftarList> {
  List<String> products = ["Regular","Premium","VIP"];
  List<String> productDetails = ["1 Month","1 Year","Unlimited"];
  List<int> price = [10,110,500];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          //itemCount: Products.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0]),),
              title: Text(products[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
            );
          }),
        ),
      ),
    );
  } // NEW
  
  
}