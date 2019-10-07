import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_jsontodart/model/model.dart';

class CancelCosmeticService {

  Future<List<CancelCosmetic>> getData() async {

    String urlCancelledCosmetic = "https://www.pharmacy.gov.my/data/npra/kosmetik_batal.json";

    var response = await http.get(urlCancelledCosmetic);

    Map collection = jsonDecode(response.body);

    List<CancelCosmetic> dataSet = collection['data'];

    dataSet.map((json)=> CancelCosmetic.fromJson(json)).toList();

    return dataSet;

  }


}

