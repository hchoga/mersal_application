import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'http_exception.dart';
import 'dart:convert';
class Sponsors {
  final int id;
  final String name,imageUrl;

  Sponsors(this.id,this.name,this.imageUrl);
}

List <Sponsors> sponsorList =[];
void fetchSponsorsData () async {
  const url = 'https://yaallah-a1736.firebaseio.com/our_sponsors.json';

  final response = await http.get(url);
  if (response.statusCode >= 400)
    throw (HttpException('could\'t load Charitable Activities'));
final List body = jsonDecode(response.body);
body.forEach((elementId) {
  sponsorList.add(Sponsors(elementId['id'], elementId['name'], elementId['image']));
});



}