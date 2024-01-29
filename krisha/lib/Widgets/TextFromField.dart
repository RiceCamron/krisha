import 'package:flutter/material.dart';

class TextFromField extends StatefulWidget {
  const TextFromField({super.key, required this.hintText});
  final String hintText;
  @override
  State<TextFromField> createState() => _TextFromFieldState();
}

class _TextFromFieldState extends State<TextFromField> {
  
  bool _isFocused = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        height: 65.0,
        padding: EdgeInsets.only(
          left: 16.0,
          top: _isFocused ? 10.0 : 6.0,
          bottom: 2.0,
          right: 16.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromRGBO(246, 246, 249, 1),
        ),
        child: Stack(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: 16.0,
                  color:
                      _isFocused ? Colors.grey.shade400 : Colors.grey.shade600,
                ),
              ),
              onChanged: (text) {
                setState(() {
                  _isFocused = text.isNotEmpty;
                });
              },
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              top: _isFocused ? 0.0 : 12.0,
              left: 4.0,
              child: Text(
                widget.hintText,
                style: TextStyle(
                  fontSize: 12.0,
                  color: _isFocused
                      ? Colors.grey.shade400
                      : Color.fromARGB(0, 117, 117, 117),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}