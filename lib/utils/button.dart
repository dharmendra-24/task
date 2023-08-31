import 'package:flutter/material.dart';

class ButtonCard extends StatefulWidget {
  int index;
  ButtonCard({super.key, required this.index});

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {
  @override
  TextEditingController controller = TextEditingController();
  Color color1 = Colors.grey.shade300;
  Color color2 = Colors.grey.shade300;
  bool bools = false;
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Card(
          elevation: 6,
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFA5A5A5),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: TextField(
                      enabled: true,
                      autofocus: true,
                      controller: controller,
                      decoration: const InputDecoration(
                          fillColor: Color(0xFFA5A5A5),
                          focusColor: Color(0xFFA5A5A5),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.clear),
                          hintText: "Mysuru,Karnataka,India",
                          labelText: "Destination"),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    // ElevatedButton(onPressed: (), child: child)
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: GestureDetector(
                        onDoubleTap: () {
                          setState(() {
                            color1 = Colors.grey.shade300;
                          });
                        },
                        onTap: () {
                          setState(() {
                            color1 = Colors.pink.shade200;

                            //Color color1 = Colors.grey.shade300;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: color1,
                              borderRadius: BorderRadius.circular(10)),
                          width: 106,
                          height: 34,
                          child: Row(
                            children: [
                              GestureDetector(
                                child: const Icon(
                                  Icons.check,
                                  size: 18,
                                ),
                              ),
                              Text('  One-way')
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          color2 = Colors.grey.shade300;
                          widget.index = 4;
                        });
                      },
                      onTap: () {
                        setState(() {
                          color2 = Colors.pink.shade200;
                          widget.index = 4;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: color2,
                              borderRadius: BorderRadius.circular(10)),
                          width: 106,
                          height: 34,
                          child: const Center(
                            child: Text('Round Trip'),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFA5A5A5),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 2),
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                          fillColor: Color(0xFFA5A5A5),
                          focusColor: Color(0xFFA5A5A5),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.calendar_month),
                          labelText: "Return Date"),
                    )),
              ],
            ),
          ),
        ));
  }
}
