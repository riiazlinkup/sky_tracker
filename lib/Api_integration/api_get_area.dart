import 'dart:convert';
import 'package:sky_tracker/models/all_get_area_model_class.dart';
import 'package:http/http.dart' as http;

class ApiAllGetArea {
  static GetApiAllGetArea(context) async {
    List<Areas> allGetAreaslist = [];

    Areas allareas;
    try {
      var Response = await http.get(Uri.parse("http://apps.bigerp24.com/api/get_area"), headers: {
        'Content-Type': 'application/json',
        "Authorization": "Bearer ${("token")}",
      });

      var data = jsonDecode(Response.body);
      print("AAAAAAAArrrreaaaaa===>: ${data}");
      for (var i in data!["areas"]) {
        allareas = Areas.fromJson(i);
        allGetAreaslist.add(allareas);
        print(allGetAreaslist);
      }
      print("Get Area length====>: ${allGetAreaslist.length}");
      //print("Area Name=========>${allGetArealist[0]}");
    } catch (e) {
      print("Something is wrong all Get Area=======:$e");
    }
    return allGetAreaslist;
  }
}

// import 'dart:convert';
// import '../models/get_area_model.dart';
// import 'package:http/http.dart' as http;

// class ApiGetArea {
//   Future apiGetArea() async {
//     try {
//       List<Area> allgetAreaList = [];
//       final Uri apiAreaUrl = Uri.parse("http://apps.bigerp24.com/api/get_area");

//       http.Response response = await http.get(apiAreaUrl);
//       print("responsed=======>>>>> $response");
//       print("response=======>>>>> ${response.statusCode}");
//       var jsonData =  jsonDecode(response.body);
//       print("AAAAAAAArrrreaaaaa===>: ${jsonData}");
//       if (response.statusCode == 200) {
        
//       }
//     } catch (e) {}
//   }
// }
