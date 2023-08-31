import 'package:flutter/material.dart';

class VehiclePage extends StatefulWidget {
  const VehiclePage({super.key});

  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  TextEditingController controller = TextEditingController();
  int current = 0;
  List<String> list1 = [
    'asset/car1.jpeg',
    'asset/car2.jpeg',
    'asset/car3.jpeg'
  ];
  List<String> list2 = ['Sedan', 'Suv', 'Crysta'];
  List<String> list3 = [
    'Maruti Swiftn Dzire Or Similiar',
    'Toyoto Innova 6+1 Or Similiar',
    'Toyoto Innova Crysta 6+1 Or Similar'
  ];
  List<num> list4 = [3729, 5832, 8068];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                child: ClipRRect(
                    child: Image.asset(
                  'asset/mapimage2.jpeg',
                  fit: BoxFit.cover,
                ))),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.pin_drop,
                    color: Colors.red,
                  ),
                  border: UnderlineInputBorder(),
                  hintText: "Banglore Karnataka,India",
                  labelText: "Source Location",
                  // prefixIcon: IconButton(
                  //     onPressed: () {}, icon:),
                  // suffixIcon: IconButton(
                  //   icon: Icon(Icons.arrow_drop_down_circle),
                  //   onPressed: () {},
                  // ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.pin_drop,
                    color: Colors.green,
                  ),
                  border: UnderlineInputBorder(),
                  hintText: "Mysuru Karnataka,India",
                  labelText: "Destination Location",
                  // prefixIcon: IconButton(
                  //     onPressed: () {}, icon:),
                  // suffixIcon: IconButton(
                  //   icon: Icon(Icons.arrow_drop_down_circle),
                  //   onPressed: () {},
                  // ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Top Suggestions for you',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pickup Date Time',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xFFA5A5A5),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 18,
                              ),
                              Text(
                                "   07-07-2023 10:51 AM",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: 155,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: current == index
                          ? Card(
                              elevation: 6,
                              child: ListTile(
                                leading: Image.asset(
                                  list1[index],
                                  width: 45,
                                  height: 33,
                                  fit: BoxFit.fill,
                                ),
                                trailing: Text(
                                  '\u{20B9}${list4[index]}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                title: Text(
                                  list2[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  list3[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          : ListTile(
                              leading: Image.asset(
                                list1[index],
                                width: 45,
                                height: 33,
                                fit: BoxFit.fill,
                              ),
                              trailing: Text(
                                '\u{20B9}${list4[index]}',
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              title: Text(
                                list2[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                list3[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      width: 106,
                      height: 34,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.check,
                            size: 18,
                          ),
                          Text('  One-way'),
                        ],
                      ),
                    ),
                  ),
                ),
                // ElevatedButton(onPressed: (), child: child)
                const SizedBox(
                  width: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        //color: Colors.black,
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    width: 106,
                    height: 34,
                    child: const Center(
                      child: Text('Round Trip'),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 12),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
