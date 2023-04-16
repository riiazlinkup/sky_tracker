import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widget/button.dart';

class DataListScreen extends StatefulWidget {
  @override
  State<DataListScreen> createState() => _DataListScreenState();
}

class _DataListScreenState extends State<DataListScreen> {
  List<String> items = ["All", "By Area", "Team Leader", "By BP"];
  List<String> areaList = ["Dhaka", "Pabna", "Kustia"];
  List<String> teamLeaderList = ["Jone", "Mickey", "Root"];
  List<String> bpList = ["BP1", "BP2", "BP3"];
  String dropDownvalue = "All";
  String? dropDownAreaList;
  String? dropDownTeamLeader;
  String? dropDownBP;
  String? fromPickedDate;
  String? dateToPickedDate;
  int? setIndex;

  Future<void> _fromToSelectDate() async {
    final DateTime? fromToPickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );
    if (fromToPickedDate != null) {
      setState(() {
        fromPickedDate = DateFormat("yMd").format(fromToPickedDate);
      });
    }
  }

  Future<void> _dateToSelectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null) {
      setState(() {
        dateToPickedDate = DateFormat("yMd").format(pickedDate);
      });
    }
  }

  List<Map<String, dynamic>> datas = [
    {
      "sl": "1",
      "name": "mkvd",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "2",
      "name": "sadman",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
    {
      "sl": "John",
      "name": "01748569102",
      "mobile": "USA",
      "new_sim": "John",
      "toffee": "01748569102",
      "sell_package": "USA",
      "sell_gb": "USA",
      "recharge": "John",
      "recharge_amount": "01748569102",
      "gift": "USA",
      "gift_name": "01748569102",
      "area": "USA",
      "location": "USA",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data List"),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              // This Row is Search type
              Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Text("Search Type"),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: DropdownButton(
                          underline: const SizedBox.shrink(),
                          isExpanded: true,
                          value: dropDownvalue,
                          items: items.map((String mapValue) {
                            return DropdownMenuItem<String>(
                              value: mapValue,
                              child: Text(mapValue),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropDownvalue = value!.toString();
                              // _byAreaVisible = value == "By Area";
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // This condition by Select Area
              if (dropDownvalue == "By Area")
                Column(
                  children: [
                    const Divider(color: Colors.transparent),
                    Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: SizedBox.shrink(),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: DropdownButton(
                                underline: const SizedBox.shrink(),
                                isExpanded: true,
                                hint: const Text(
                                  "Select Area",
                                  style: TextStyle(color: Colors.black45),
                                ),
                                value: dropDownAreaList,
                                items: areaList.map((String mapValue) {
                                  return DropdownMenuItem<String>(
                                    value: mapValue,
                                    child: Text(mapValue),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropDownAreaList = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              // This condition by Select Team Leader
              if (dropDownvalue == "Team Leader")
                Column(
                  children: [
                    const Divider(color: Colors.transparent),
                    Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: SizedBox.shrink(),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: DropdownButton(
                                underline: const SizedBox.shrink(),
                                isExpanded: true,
                                hint: const Text(
                                  "Select Team Leader",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black45),
                                ),
                                value: dropDownTeamLeader,
                                items: teamLeaderList.map((String mapValue) {
                                  return DropdownMenuItem<String>(
                                    value: mapValue,
                                    child: Text(mapValue),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropDownTeamLeader = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              // This condition by Select By BP
              if (dropDownvalue == "By BP")
                Column(
                  children: [
                    const Divider(color: Colors.transparent),
                    Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: SizedBox.shrink(),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: DropdownButton(
                                underline: const SizedBox.shrink(),
                                isExpanded: true,
                                hint: const Text(
                                  "Select BP",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black45),
                                ),
                                value: dropDownBP,
                                items: bpList.map((String mapValue) {
                                  return DropdownMenuItem<String>(
                                    value: mapValue,
                                    child: Text(mapValue),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropDownBP = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              const Divider(color: Colors.transparent),
              // This Row is From
              Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Text("From"),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: fromPickedDate == null ? DateFormat("yMd").format(DateTime.now()) : fromPickedDate,
                            hintStyle: const TextStyle(color: Colors.black87),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 1.0,
                            ),
                            suffixIcon: IconButton(
                              padding: const EdgeInsets.only(
                                bottom: 2.0,
                              ),
                              onPressed: () => _fromToSelectDate(),
                              icon: const Icon(Icons.date_range, color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.transparent),
              // This Row Date To
              Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Text("Date To"),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: dateToPickedDate == null ? DateFormat("yMd").format(DateTime.now()) : dateToPickedDate,
                            hintStyle: const TextStyle(color: Colors.black87),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 1.0,
                            ),
                            suffixIcon: IconButton(
                              padding: const EdgeInsets.only(
                                bottom: 2.0,
                              ),
                              onPressed: () {
                                _dateToSelectDate();
                              },
                              icon: const Icon(
                                Icons.date_range,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.transparent),
              //This Button Start
              PurpleButton("Search", () => null),
              const Divider(color: Colors.transparent),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DataTable(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          columns: const <DataColumn>[
                            DataColumn(label: Text("SL")),
                            DataColumn(label: Text("Name")),
                            DataColumn(label: Text("Mobile No.")),
                            DataColumn(label: Text("New Sim")),
                            DataColumn(label: Text("Toffee")),
                            DataColumn(label: Text("Sell Package")),
                            DataColumn(label: Text("Sell (GB)")),
                            DataColumn(label: Text("Recharge")),
                            DataColumn(label: Text("Recharge(Amount)")),
                            DataColumn(label: Text("Gift")),
                            DataColumn(label: Text("Gift Name")),
                            DataColumn(label: Text("Area")),
                            DataColumn(label: Text("Location")),
                            // DataColumn(label: Text("Action")),
                          ],
                          rows: List.generate(10, (index) {
                            return DataRow(
                              cells: [
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                                DataCell(
                                  Text("${index + 1}"),
                                ),
                              ],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
