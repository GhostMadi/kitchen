import 'package:flutter/material.dart';

class radio2 extends StatefulWidget {
  int value;
  String txt;
  int groupValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;
  radio2(
      {Key? key,
      required this.value,
      required this.txt,
      required this.groupValue,
      this.color = Colors.transparent,
      this.selectColor = Colors.green,
      this.onChanged})
      : super(key: key);

  @override
  State<radio2> createState() => _RadioCustomState();
}

class _RadioCustomState extends State<radio2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        height: 40,
        width: 90,
        child: Center(child: Text(widget.txt,style: TextStyle(color: widget.value==widget.groupValue?Colors.white:Colors.black),)),
        decoration: BoxDecoration(
          color: widget.value == widget.groupValue
              ? widget.selectColor
              : widget.color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
          border:Border.all(color: Colors.grey,width: 0.5),
        ),
      ),
    );
  }
}
