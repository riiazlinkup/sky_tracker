import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import '../widget/deshboard.dart';
import '../widget/gap_height.dart';
import 'data_list_screen.dart';
import 'data_entry_screen.dart';

class DeshBoardScreen extends StatefulWidget {
  const DeshBoardScreen({required this.currentPosition, super.key});
  final Position currentPosition;

  @override
  State<DeshBoardScreen> createState() => _DeshBoardScreenState();
}

class _DeshBoardScreenState extends State<DeshBoardScreen> {
  String? _currentAddress;

  Future _logOut(context) async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            title: const Text("Are you sure to logout?"),
            content: SizedBox(
              // height:100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("Yes"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  // Future<void> _getCurrentAddress() async {
  //   final List<Placemark> placemarks = await placemarkFromCoordinates(
  //     widget.currentPosition.latitude,
  //     widget.currentPosition.longitude,
  //   );
  //   // setState(() {
  //   //   _currentAddress =
  //   //       "${placemarks.first.subLocality!},${placemarks.first.thoroughfare!}, ${placemarks.first.locality!}";
  //   // });
  // }

  // @override
  // void initState() {
  //   _getCurrentAddress();
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DESHBOARD"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=740&t=st=1681638562~exp=1681639162~hmac=72abcb9ab92b4a566bafa56afd3afe300e156bbef6641a4c0af910d9092eb0d6",
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline_rounded),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Sign Out'),
              onTap: () {
                _logOut(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DeshBoard(
                title: "Data Entry",
                icon: Icons.receipt_long_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => DataEntryScreen(
                        currentPositionUser: widget.currentPosition,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(width: 10.0),
              DeshBoard(
                title: "Data List",
                icon: Icons.list_alt_outlined,
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => DataListScreen(),
                  ),
                ),
              ),
            ],
          ),
          gapHeight(height: 10.0),
          //   Expanded(
          //     child: SizedBox(
          //       height: MediaQuery.of(context).size.height / 20,
          //       child: Text(
          //         _currentAddress == null ? "Loading..." : _currentAddress.toString(),
          //       ),
          //       // TextField(
          //       //   controller: _phoneController,
          //       //   // keyboardType: TextInputType.phone,
          //       //   decoration: const InputDecoration(
          //       //     // hintText: "Sadman",
          //       //     hintStyle: TextStyle(color: Colors.black26),
          //       //     contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          //       //     border: OutlineInputBorder(),
          //       //   ),
          //       // ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
