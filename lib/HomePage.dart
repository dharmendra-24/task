import 'package:dharmendra_baghel/utils/IconwithText.dart';
import 'package:dharmendra_baghel/utils/button.dart';
import 'package:dharmendra_baghel/vehicleScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late int currentIndex = 0;
  bool bools = false;
  List<Widget> list3 = [widget3, widget4, widget2, widget1];
  List<String> list1 = ['Car', 'Rental', 'Outstation'];
  List<Widget> list4 = [container1, container2, container3];
  List<IconData> list2 = [
    Icons.car_rental,
    Icons.car_rental,
    Icons.car_rental,
  ];
  TextEditingController controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text(
          'CABTO',
          style: TextStyle(
              //color: Colors.yellow,
              fontFamily: "Alumni-Sans",
              fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              child: ClipRRect(
                  child: Image.asset(
                'asset/mapimage.jpeg',
                fit: BoxFit.fitWidth,
              ))),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 0),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: list1.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / 3.8,
                    );
                  },
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              bools == true;
                            });
                          },
                          child: IconTextWithUnderline(
                            icon: Icon(
                              list2[index],
                              size: 27,
                              color: currentIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            text: Text(
                              list1[index],
                              style: TextStyle(
                                  fontWeight: currentIndex == index
                                      ? FontWeight.bold
                                      : FontWeight.w100),
                            ),
                          ),
                        ),
                        currentIndex == index
                            ? list4[currentIndex]
                            : SizedBox(),
                      ],
                    );
                  })),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          list3[currentIndex],
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => VehiclePage())));
                },
                child: const Text('Next',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const StadiumBorder(),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

int currentIndex = 0;
late Color color = Colors.grey;
TextEditingController controller = TextEditingController();
Widget widget1 = Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Card(
      elevation: 6,
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: controller,
                  autofocus: true,
                  decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      fillColor: Color(0xFFA5A5A5),
                      focusColor: Color(0xFFA5A5A5),
                      border: OutlineInputBorder(),
                      labelText: 'Destination',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Mysuru ,Karnataka,India"),
                )),
            Row(
              children: [
                // ElevatedButton(onPressed: (), child: child)

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      color = Colors.pink.shade200;
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10)),
                        width: 103,
                        height: 32,
                        child: const Center(
                          child: Text(
                            'One-way',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      width: 103,
                      height: 32,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.check,
                            size: 18,
                          ),
                          Text('  Round-trip',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));

Widget widget2 = ButtonCard(
  index: 3,
);
Widget widget3 = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
      //3st
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(children: [
        Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 3,
              child: TextField(
                controller: controller,
                autofocus: true,
                decoration: const InputDecoration(
                    fillColor: Color(0xFFA5A5A5),
                    focusColor: Color(0xFFA5A5A5),
                    border: OutlineInputBorder(),
                    labelText: 'Destination',
                    prefixIcon: Icon(Icons.search),
                    hintText: "Mysuru ,Karnataka,India"),
              ),
            )),
      ])),
);
Widget widget4 = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
      //
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            ' Select packages',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 80,
            height: 60,
            child: Column(
              children: [
                const Text(
                  '8 Hr',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '80 KM',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              //  margin: const EdgeInsets.all(10),
              child: Card(
            elevation: 3,
            child: TextField(
              autofocus: true,
              controller: controller,
              decoration: const InputDecoration(
                  fillColor: Color(0xFFA5A5A5),
                  focusColor: Color(0xFFA5A5A5),
                  border: OutlineInputBorder(),
                  labelText: 'Destination',
                  prefixIcon: Icon(Icons.search),
                  hintText: "Mysuru ,Karnataka,India"),
            ),
          )),
        ]),
      )),
);
Widget container1 = Container(
  width: 37,
  height: 4,
  color: Colors.black,
);
Widget container2 = Container(
  width: 40,
  height: 4,
  color: Colors.black,
);
Widget container3 = Container(
  width: 45,
  height: 4,
  color: Colors.black,
);
