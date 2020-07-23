import 'package:http/http.dart' as http;
import 'package:mersal/demo_data.dart';
import 'package:mersal/models/sponsors_model.dart';
import 'dart:convert';

import 'http_exception.dart';

class CharitableData {
  final int id;
  final String image, title;

  const CharitableData(this.image, this.title, this.id);
}

List<CharitableData> charitableList = [];

Future<void> fetchCharitableActivities() async {

  const url = 'https://shop-app-90098.firebaseio.com/mersal/subCategories.json';

  final response = await http.get(url);
  if (response.statusCode >= 400)
    throw (HttpException('could\'t load Charitable Activities'));

  final List body = json.decode(response.body) ;
  body.forEach((element) {
    charitableList.add(CharitableData(
        element['image'], element['english_name'], element['id']));
  });

}




// await http.put('https://yaallah-a1736.firebaseio.com/our_sponsors.json',body:json.encode(sponsors) );
//  await http.put('https://shop-app-90098.firebaseio.com/mersal/case_by_category/10/.json',body: json.encode(tempCaseByCategoryId));
//  await http.put('https://shop-app-90098.firebaseio.com/mersal/case_by_category/12/.json',body: json.encode(tempCaseByCategoryId));
//  await http.put('https://shop-app-90098.firebaseio.com/mersal/case_by_category/11/.json',body: json.encode(tempCaseByCategoryId2));
