import 'package:flutter/material.dart';

class RadioCustom extends StatefulWidget {
  int value;
  int groupValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;

  RadioCustom(
      {Key? key,
      
      required this.value,
      required this.groupValue,
      this.color = Colors.transparent,
      this.selectColor = Colors.green,
      this.onChanged})
      : super(key: key);

  @override
  State<RadioCustom> createState() => _RadioCustomState();
}

class _RadioCustomState extends State<RadioCustom> {
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
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: widget.value == widget.groupValue
              ? widget.selectColor
              : widget.color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
      ),
    );
  }
}
