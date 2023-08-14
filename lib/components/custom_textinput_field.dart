import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final String label;
  final String placeHolder;
  final IconData icon;
  final TextEditingController textEditingController;
  final bool password;
  CustomTextInput({Key? key, required this.label, required this.placeHolder, required this.icon, required this.textEditingController, this.password = false}) : super(key: key);

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 20, bottom: 8),
          child: Text(widget.label, style: Theme.of(context).textTheme.headlineSmall,),),
          SizedBox(height: 55,
          child: TextField(
            controller: widget.textEditingController,
            obscureText: widget.password,
            enableSuggestions: !widget.password,
            autocorrect: !widget.password,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(start: 22.0, end: 20),
                child: Icon(widget.icon, color: Colors.black, size: 24,),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(width: 1, color: Colors.black)
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey),
              hintText: widget.placeHolder,
              fillColor: Colors.white
            ),
          ),)
        ],
      ),
    );
  }
}