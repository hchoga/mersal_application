import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'http_exception.dart';


class Activity {
  final String imageUrl, description;
  final int amount, id;
  final int collected;

  const Activity({
    @required this.description,
    @required this.collected,
    @required this.id,
    @required this.amount,
    @required this.imageUrl,
  });
}

Map<int, List<Activity>> activitiesData = {};

/* it loads the required activity from http requist and make it as a
*   List<Activity> with its id as key into gloable
*
* if the requirde id is already loaded so it returns
*     for better network usage and performance
*
* */

Future<void> fetchActivity(int id) async {

  if (activitiesData[id] != null) return;
  final url = 'https://shop-app-90098.firebaseio.com/mersal/case_by_category/$id/.json';

  final response = await http.get(url);
  if (response.statusCode >= 400) throw(HttpException(
      'could\'t load activity, id: $id'));

  final List<dynamic> body = json.decode(response.body);
  List<Activity> temp = [];

  body.forEach((item) {
    temp.add(Activity(
        description: item['case_id']['description'],
        collected: item['collected'],
        id: item['case_id']['id'],
        amount: item['case_id']['amount'],
        imageUrl: item['sub_category']['image']));
  });

  activitiesData[id] = temp;
}