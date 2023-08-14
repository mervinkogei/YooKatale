import 'package:flutter/material.dart';
import 'package:http/retry.dart';
import 'package:yookatale/Utils/color_theme.dart';
import 'package:yookatale/components/custom_button.dart';
import 'package:yookatale/components/list_cart.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final carts =["1","2"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 30),
            itemCount: carts.length,
            itemBuilder: (context, index){
            return ListCart();
          }),

          priceFooter(),
          Container(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: CustomButton(
            isLoading: false,
            onPressed: () {
            
          }, text: "CHECKOUT",),)
        ],
       ),
    );
  }
  priceFooter(){
    return Padding(padding: EdgeInsets.symmetric(horizontal:30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: CustomTheme.grey, height: 2, thickness: 2,),
        Padding(padding: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Text('Total: ', style: Theme.of(context).textTheme.headlineSmall,),
            Spacer(),
            Text('\$ Price:', style: Theme.of(context).textTheme.headlineSmall,)
          ],
        ),)
      ],
    ),);
  }
}