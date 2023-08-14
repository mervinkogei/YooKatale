import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yookatale/Utils/color_theme.dart';
import 'package:yookatale/components/custom_button.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool addButtonLead = false;
 _handleAccept() {
 Navigator.of(context).pop(true); // dialog returns true
}
  void onAddtoCart()async{
setState(() {
  addButtonLead = true;
});

//Add to cart
setState(() {
  addButtonLead = false;
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Stack(
                children: [
                    SizedBox(height: 400, width: double.infinity,
                child: CachedNetworkImage( fit:BoxFit.cover,
                  imageUrl: "https://images.unsplash.com/photo-1603808033192-082d6919d3e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",),),
                  Positioned(
                    top: 35, right: 35,
                    child: Container(
                      decoration: const ShapeDecoration(
                      color: CustomTheme.yellow,
                      shape: CircleBorder(),
                      shadows: [BoxShadow(color: CustomTheme.grey, offset: Offset(1,3), blurRadius: 3,)]
                      ),
                      child: IconButton(onPressed: onAddtoCart, icon: Icon(Icons.share)),
                    )),

                    
              
                ],
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: DefaultTextStyle(style: Theme.of(context).textTheme.headlineLarge!, child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Padding(padding: EdgeInsets.only(top: 22),
                        child: Text("Title"),),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(children: [
                    Text("MRP: ")  , Text("\$Price")
                    ]),),

                    CustomButton(onPressed: (){}, text: "Add to cart", isLoading: addButtonLead,),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text("About the item", style: Theme.of(context).textTheme.headlineMedium,),),
                    Padding(padding: EdgeInsets.only(bottom: 20),
                    child: Text("The item description is a shoe with a lot of classy and its a cost-friendly. Its availble from baby to adult sizes.", style: Theme.of(context).textTheme.bodySmall,),)
                      ],
                    )),),
                    
              ],
            ),
          )
        , Positioned(top: 35,left: 30, child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(blurRadius: 3, color: CustomTheme.yellow, offset: Offset(1,3))]
            ),
            child: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,), 
            onPressed: _handleAccept,),
          )
          ),
        ],
      )),
    );
  }
}