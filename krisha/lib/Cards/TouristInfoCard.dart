import 'package:flutter/material.dart';
import 'package:krisha/Widgets/TextFromField.dart';

class TouristInfoCard extends StatefulWidget {
  const TouristInfoCard({
    super.key,
    required this.title,
    required this.isExpanded,
  });
  final String title;
  final bool isExpanded;

  @override
  State<TouristInfoCard> createState() => _TouristInfoCardState();
}

class _TouristInfoCardState extends State<TouristInfoCard> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 20.0, left: 22.0, right: 22.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () => {
                  setState(() {
                    _isExpanded = !_isExpanded;
                    print(_isExpanded);
                  })
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(13, 114, 255, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: _isExpanded
                      ? Image.asset("assets/icons/arrowtotop_icon.png")
                      : Image.asset("assets/icons/arrowtobottom_icon.png"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: _isExpanded
                ? Column(
                    children: [
                      TextFromField(hintText: "Имя"),
                      TextFromField(hintText: "Фамилия"),
                      TextFromField(hintText: "Дата рождения"),
                      TextFromField(hintText: "Гражданство"),
                      TextFromField(hintText: "Номер загранпаспорта"),
                      TextFromField(hintText: "Срок действия загранпаспорта"),
                    ],
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
