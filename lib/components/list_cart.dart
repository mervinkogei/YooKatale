import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yookatale/Utils/color_theme.dart';

class ListCart extends StatefulWidget {
  ListCart({Key? key}) : super(key: key);

  @override
  State<ListCart> createState() => _ListCartState();
}

class _ListCartState extends State<ListCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30,),
      decoration: CustomTheme.getCardDecoration(),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(
                height: double.infinity,
                child: CachedNetworkImage(  imageUrl: "https://images.unsplash.com/photo-1603808033192-082d6919d3e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,),
                
              )),
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 8),
                      child: Text('Title', style: Theme.of(context).textTheme.headlineSmall,),),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                      child: Text('Qty 1', style: Theme.of(context).textTheme.bodySmall,),),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                      child: Text('\$ Price ', style: Theme.of(context).textTheme.headlineSmall,),),
                    ],
                  ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}