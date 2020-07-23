import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/project_model.dart';

class Projects with ChangeNotifier {
  List<Project> _items = [];

  List<Project> get items => [..._items];

  Future<void> fetchProjects() async {
    const String url =
        'https://shop-app-90098.firebaseio.com/mersal/projects.json';
    List<Project> loadedProjects = [];
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      extractedData.forEach((key, projectData) {
        loadedProjects.add(Project(
            title: projectData['name'],
            description: projectData['project_id']['description'],
            amount: projectData['project_id']['amount'],
            imageUrl: 'Images/projects/blanket.jpg', // 'Images/projects/talkkkkkkk.jpg',
            id: projectData['project_id']['id'],
            collected: projectData['collected']) );
      });
      print('fetch called');

      _items = loadedProjects;
      notifyListeners();
    } catch (exception) {
      print('error');
      print(exception);
    }
  }

//  Future<void> postProjects() async {
//    const String url = 'https://shop-app-90098.firebaseio.com/mersal/projects.json';
//
//    x.forEach((element) async {
//      await http.post(url,
//          body: json.encode(element));
//    });
//
//  }
}
//
//var x = [
//  {
//    "project_id": {
//      "id": 25,
//      "amount": 5000,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "project 1",
//    "collected": 1250
//  },
//  {
//    "project_id": {
//      "id": 26,
//      "amount": 30000,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "help with blanket",
//    "collected": 15000
//  },
//  {
//    "project_id": {
//      "id": 27,
//      "amount": 100000,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "fix roof",
//    "collected": 20000
//  },
//  {
//    "project_id": {
//      "id": 28,
//      "amount": 150000,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "connect water",
//    "collected": 110000
//  },
//  {
//    "project_id": {
//      "id": 29,
//      "amount": 50000,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "covid-19 medicines",
//    "collected": 4000
//  },
//  {
//    "project_id": {
//      "id": 30,
//      "amount": 30000,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "Communication",
//    "collected": 20000
//  },
//  {
//    "project_id": {
//      "id": 31,
//      "amount": 564,
//      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
//      "is_urgent": true
//    },
//    "name": "project 7",
//    "collected": 400
//  }
//];
