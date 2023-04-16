// // import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// // import 'package:geocoding/geocoding.dart';
// // import 'package:geolocator/geolocator.dart';
// // import 'package:sky_tracker/widget/gap_height.dart';


// // class DashboardScreen extends StatefulWidget {
// //   const DashboardScreen({super.key});

// //   @override
// //   State<DashboardScreen> createState() => _DashboardScreenState();
// // }

// // class _DashboardScreenState extends State<DashboardScreen> {
// //   final PageController _controller1 = PageController();
// //   final PageController _controller2 = PageController();

// //   int _currentPageIndex1 = 0;
// //   int _currentPageIndex2 = 0;

// //   List image = [
// //     "assets/images/img1.png",
// //     "assets/images/img3.png",
// //     "assets/images/img2.png",
// //   ];

// //   Position? _currentPosition;
// //   //UserService userService = UserService();

// //   List textWidget = [
// //     Center(
// //       child: Column(
// //         // crossAxisAlignment: crossCenter,
// //         // mainAxisAlignment: mainCenter,
// //         children: const [
// //           Text(
// //             "BROWSE YOUR MENU AND \nORDER DIRECTLY",
// //             textAlign: TextAlign.center,
// //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
// //           ),
// //           SizedBox(height: 20),
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 50),
// //             child: Text(
// //               "Our App Can Send you everywhere, evenspace. we provide the best service ",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 15),
// //             ),
// //           )
// //         ],
// //       ),
// //     ),
// //     Center(
// //       child: Column(
// //         // crossAxisAlignment: crossCenter,
// //         // mainAxisAlignment: mainCenter,
// //         children: const [
// //           Text(
// //             "EVEN TO SPACE WITH US ! \n TOGETHER ",
// //             textAlign: TextAlign.center,
// //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
// //           ),
// //           SizedBox(height: 20),
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 50),
// //             child: Text(
// //               "Our App Can Send you everywhere, evenspace. we provide the best service ",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 15),
// //             ),
// //           )
// //         ],
// //       ),
// //     ),
// //     Center(
// //       child: Column(
// //         // crossAxisAlignment: crossCenter,
// //         // mainAxisAlignment: mainCenter,
// //         children: const [
// //           Text(
// //             "DELIVERY TO YOUR DOOR",
// //             textAlign: TextAlign.center,
// //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
// //           ),
// //           SizedBox(height: 20),
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 50),
// //             child: Text(
// //               "Our App Can Send you everywhere, evenspace. we provide the best service ",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 15),
// //             ),
// //           )
// //         ],
// //       ),
// //     ),
// //   ];

// //   @override
// //   void initState() {
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //      // backgroundColor: kBgColor,
// //       body: SafeArea(
// //         child: Padding(
// //          // padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
// //           child: Column(
// //             children: [
// //               gapHeight(height: 20),
// //               Expanded(
// //                 flex: 2,
// //                 // height: 200,
// //                 // width: double.infinity,
// //                 // color: Colors.black,
// //                 child: PageView.builder(
// //                   controller: _controller1,
// //                   itemCount: image.length,
// //                   onPageChanged: (index) {
// //                     setState(() {
// //                       _currentPageIndex1 = index;
// //                       _controller2.jumpToPage(index);
// //                     });
// //                   },
// //                   itemBuilder: (context, index) {
// //                     return Container(
// //                       margin: EdgeInsets.all(20),
// //                       // margin: EdgeInsets.symmetric(horizontal: 5),
// //                       decoration: BoxDecoration(
// //                         //color: Colors.red,
// //                         borderRadius: BorderRadius.circular(20),
// //                         image: DecorationImage(
// //                           image: AssetImage(image[index]),
// //                           fit: BoxFit.contain,
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //               SizedBox(
// //                 // color: Colors.red,
// //                 height: 35,
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: List.generate(
// //                       image.length,
// //                       (index) => CircleAvatar(
// //                             radius: 14,
// //                             backgroundColor: _currentPageIndex1 == index
// //                                 ? kPrimaryColor
// //                                 : kBgColor,
// //                             child: CircleAvatar(
// //                               radius: 11.r,
// //                               backgroundColor: const Color(0xffF5F5F5),
// //                               child: CircleAvatar(
// //                                 radius: 8.r,
// //                                 backgroundColor: _currentPageIndex1 == index
// //                                     ? kPrimaryColor
// //                                     : Colors.grey,
// //                               ),
// //                             ),
// //                           )),
// //                 ),
// //               ),
// //               Expanded(
// //                 flex: 1,
// //                 child: PageView.builder(
// //                   controller: _controller2,
// //                   itemCount: image.length,
// //                   onPageChanged: (index) {
// //                     setState(() {
// //                       _currentPageIndex2 = index;
// //                       _controller1.jumpToPage(index);
// //                     });
// //                   },
// //                   itemBuilder: (context, index) {
// //                     return Container(
// //                       margin: EdgeInsets.symmetric(horizontal: 5.r),
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(20),
// //                       ),
// //                       child: textWidget[index],
// //                     );
// //                   },
// //                 ),
// //               ),
// //               CustomButton(
// //                 text: "GET STARTED",
// //                 ontap: () async {
// //                   await _getCurrentLocation();
// //                   if (_currentPosition != null) {
// //                     Navigator.push(
// //                       context,
// //                       SlideLeftRoute(
// //                         page: MapScreen(
// //                           currentPosition: _currentPosition!,
// //                         ),
// //                       ),
// //                     );
// //                   } else {
// //                     Fluttertoast.showToast(
// //                       msg: 'Please get current location first',
// //                       toastLength: Toast.LENGTH_SHORT,
// //                       gravity: ToastGravity.BOTTOM,
// //                       backgroundColor: Colors.grey[600],
// //                       textColor: Colors.white,
// //                     );
// //                   }
// //                 },
// //               ),
// //               gapHeight(size: 20),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

//   import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:geolocator/geolocator.dart';

// _getCurrentLocation() async {
//     LocationPermission permission;
//     bool serviceEnabled;
//      serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       Fluttertoast.showToast(
//         msg: 'Please enable location services',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.grey[600],
//         textColor: Colors.white,
//       );
//       return;
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         Fluttertoast.showToast(
//           msg: 'Location permission denied',
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.grey[600],
//           textColor: Colors.white,
//         );
//         return;
//       }
//     }

//     final position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     await userService.saveDouble(key: 'lat', value: position.latitude);
//     await userService.saveDouble(key: 'lon', value: position.longitude);
//     var lat = await userService.getDouble(key: 'lat');
//     var lon = await userService.getDouble(key: 'lon');
//     print("lat====>$lat");
//     print("lon====>$lon");
//     setState(() {
//       _currentPosition = position;
//     });
//     try {
//       List<Placemark> placemarks =
//           await placemarkFromCoordinates(position.latitude, position.longitude);
//       print(placemarks);
//     } catch (e) {
//       print(e);
//     }
//   }
// }








// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';

// import '../../helpers/constants/constants.dart';
// import '../../helpers/responsive/size_config.dart';
// import '../../helpers/routes/custom_routes.dart';
// import '../../widgets/custom_button.dart';
// import '../auth/login_screen.dart';

// class MapScreen extends StatefulWidget {
//   final Position currentPosition;
//   const MapScreen({Key? key, required this.currentPosition}) : super(key: key);

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   GoogleMapController? googleMapController;
//   final Set<Marker> _markers = {};
//   String? _currentAddress;
//   String? _currentAddress2;

//   @override
//   void initState() {
//     super.initState();
//     _markers.add(Marker(
//       markerId: const MarkerId('current_location'),
//       position: LatLng(
//         widget.currentPosition.latitude,
//         widget.currentPosition.longitude,
//       ),
//     ));
//     _getCurrentAddress();
//   }

//   Future<void> _getCurrentAddress() async {
//     final List<Placemark> placemarks = await placemarkFromCoordinates(
//       widget.currentPosition.latitude,
//       widget.currentPosition.longitude,
//     );
//     setState(() {
//       _currentAddress =
//           "${placemarks.first.locality!.toUpperCase()}, ${placemarks.first.country!.toUpperCase()}";
//       _currentAddress2 =
//           "${placemarks.first.street!}, ${placemarks.first.locality!}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             mapType: MapType.normal,
//             zoomControlsEnabled: false,
//             initialCameraPosition: CameraPosition(
//               target: LatLng(
//                 widget.currentPosition.latitude,
//                 widget.currentPosition.longitude,
//               ),
//               zoom: 14,
//             ),
//             onMapCreated: (GoogleMapController controller) {
//               googleMapController = controller;
//             },
//             markers: _markers,
//           ),
//           SafeArea(
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: kdefaultPadding,
//                 vertical: kdefaultPadding,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: kBgColor,
//                       borderRadius: BorderRadius.circular(10.r),
//                     ),
//                     child: Center(
//                       child: TextFormField(
//                         scrollPadding: EdgeInsets.zero,
//                         decoration: const InputDecoration(
//                           hintText: "Search",
//                           border: InputBorder.none,
//                           prefixIcon: Icon(Icons.search),
//                           suffixIcon: ImageIcon(
//                             AssetImage(
//                               "assets/icons/location_icon.png",
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.symmetric(
//                       horizontal: kdefaultPadding,
//                       vertical: kdefaultPadding,
//                     ),
//                     decoration: BoxDecoration(
//                         color: kBgColor,
//                         borderRadius: BorderRadius.circular(20.r),
//                         boxShadow: const [
//                           BoxShadow(
//                               color: kShadowColor,
//                               offset: Offset(4, 4),
//                               blurRadius: 5)
//                         ]),
//                     child: Column(
//                       crossAxisAlignment: crossStart,
//                       children: [
//                         Text(
//                           "DELIVERY LOACATION",
//                           style:
//                               kTitleTextstyle.copyWith(color: kSecounderyColor),
//                         ),
//                         gapHeight(size: 15),
//                         Row(
//                           children: [
//                             Image.asset(
//                               "assets/icons/location & home.png",
//                               height: 25.h,
//                             ),
//                             gapWidth(size: 5),
//                             Text(
//                               _currentAddress ?? "Loading...",
//                               style: kTitleTextstyle,
//                             ),
//                           ],
//                         ),
//                         gapHeight(size: 18),
//                         Text(
//                           _currentAddress2 ?? "Loading...",
//                           style:
//                               kTitleTextstyle.copyWith(color: kSecounderyColor),
//                         ),
//                         gapHeight(size: 20),
//                         CustomButton(
//                           text: "CONFIRM LOCATION",
//                           ontap: () {
//                             Get.offAll(() => const LoginScreen());
//                           },
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }