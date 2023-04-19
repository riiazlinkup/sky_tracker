import 'package:flutter/material.dart';
import 'package:sky_tracker/Api_integration/api_get_data.dart';
import 'package:sky_tracker/models/all_get_data_modelClass.dart';

import '../Api_integration/api_get_area.dart';
import '../models/all_get_area_model_class.dart';

class CounterProvider extends ChangeNotifier {
  //get Area
  List<Areas> allGetAreaslist = [];
  getArea(BuildContext context) async {
    allGetAreaslist = await ApiAllGetArea.GetApiAllGetArea(context);
    notifyListeners();
  }

  List<AllGetDataModelClass> allGetDatalist = [];
  getGetData(context, String? dateFrom, String? dateTo) async {
    allGetDatalist = await ApiAllGetData.GetApiAllGetData(context, dateFrom, dateTo);
    notifyListeners();
  }
}
