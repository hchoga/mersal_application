import 'package:mersal/models/charitableActivities_model.dart';

import 'models/activity_model.dart';
import 'models/user_donation_model.dart';

const demoSponsors = [
  "Images/smsm.jpg",
  "Images/smsm.jpg",
  "Images/smsm.jpg",
  "Images/smsm.jpg"
];

//const List<CharitableData> demoCharitableActivities = [
//  CharitableData('Images/projects/patientt.png', "Treat a patient",2),
//];

const List<Activity> demoCases = [
  Activity(
      id: 1,
      amount: 18000,
      collected: 10000,
      imageUrl: 'Images/projects/blanket.jpg',
      description:
          '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''' //'Images/homless.webp'
      ),
  Activity(
    id: 2,
    amount: 16000,
    collected: 4000,
    imageUrl: 'Images/projects/blanket.jpg',
    //'Images/hungry.webp',
    description:
        '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
  ),
  Activity(
    id: 3,
    amount: 15000,
    collected: 12500,
    imageUrl: 'Images/projects/blanket.jpg',
    // 'Images/poor.jpg',
    description:
        '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
  ),
  Activity(
    id: 4,
    amount: 17000,
    collected: 11000,
    imageUrl: 'Images/projects/blanket.jpg',
    //'Images/volunt.webp',
    description:
        '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and
    be a part of our mission.''',
  ),
  Activity(
    id: 5,
    amount: 8000,
    collected: 7000,
    imageUrl: 'Images/projects/blanket.jpg',
    //'Images/homless.webp'
    description:
        '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
  ),
];

const List<Activity> demoUrgentCases = [
  Activity(
      id: 1,
      amount: 18000,
      collected: 10000,
      imageUrl: 'Images/projects/blanket.jpg',
      description:
          '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''' //'Images/homless.webp'
      ),
  Activity(
    id: 3,
    amount: 15000,
    collected: 12500,
    imageUrl: 'Images/projects/blanket.jpg',
    // 'Images/poor.jpg',
    description:
        '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
  ),
  Activity(
    id: 5,
    amount: 8000,
    collected: 7000,
    imageUrl: 'Images/projects/blanket.jpg',
    //'Images/homless.webp'
    description:
        '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
  ),
];

final List<UserDonation> userDonation = [
  UserDonation(caseId: '1', id: '21', date: DateTime.now(), amount: 400),
  UserDonation(caseId: '3', id: '22', date: DateTime.now(), amount: 600),
];

var urgenrCases = [
  {
    "case_id": {
      "id": 33,
      "amount": 6000,
      "description": "None",
      "is_urgent": true
    },
    "code": "a34ec6faab895",
    "sub_category": {
      "id": 2,
      "english_name": "Sub-21",
      "arabic_name": "فرعي-21",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": "/media/img/Categories/category_XZqvGoV.png"
    },
    "collected": 0
  }
];

var cases = [
  {
    "case_id": {
      "id": 23,
      "amount": 10000,
      "description": "None",
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 1,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": "/media/img/Categories/category_8gnAWow.png"
    },
    "collected": 0
  }
];

var slideImages = [
  {"id": 1, "name": "test1", "image": "/media/1.jpg"},
  {
    "id": 3,
    "name": "تجربة1",
    "image": "/media/Kairo_Ibn_Tulun_Moschee_BW_4.jpg"
  }
];

var sponsors = [
  {
    "id": 1,
    "name": "sponsor 1",
    "image":
        "Images/smsm.jpg"
  },
  {"id": 2, "name": "تجربة 2", "image": "Images/smsm.jpg"}
];

var userDonation5 = [
  {
    "id": 7,
    "donor": {
      "id": 8,
      "name": "apitest_new1",
      "city_1": "6 octobar",
      "country_1": "giza",
      "apartment_no_1": "16",
      "building_1": null,
      "area_1": null,
      "phone_1": null,
      "street_1": null,
      "floor_1": null,
      "address_1": null,
      "city_2": null,
      "country_2": null,
      "apartment_no_2": null,
      "building_2": null,
      "area_2": null,
      "phone_2": null,
      "street_2": null,
      "floor_2": null,
      "address_2": null
    },
    "contribution": {
      "id": 25,
      "amount": 564,
      "description": "None",
      "is_urgent": true
    },
    "assigned_agent": null,
    "amount": 300,
    "address_no": "1",
    "charitable_activity": {
      "id": 2,
      "english_name": "Sub-21",
      "arabic_name": "فرعي-21",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": "/media/img/Categories/category_XZqvGoV.png"
    },
    "date": "2020-03-29",
    "collected": true
  }
];

var userData = {
  "id": 1,
  "name": "Donor1",
  "city_1": "manman123c",
  "country_1": "manman123co",
  "apartment_no_1": "manman",
  "building_1": "manmb",
  "area_1": "manman12ar",
  "phone_1": "010",
  "street_1": "manman12st",
  "floor_1": "4",
  "address_1": "None",
  "city_2": null,
  "country_2": null,
  "apartment_no_2": null,
  "building_2": null,
  "area_2": null,
  "phone_2": null,
  "street_2": null,
  "floor_2": null,
  "address_2": ""
};

var charitableActivity = [
  {
    "case_id": {
      "id": 23,
      "amount": 10000,
      "description": "None",
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 1,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": "/media/img/Categories/category_8gnAWow.png"
    },
    "collected": 0
  }
];

var caseByCategoryId = [
  {
    "case_id": {
      "id": 23,
      "amount": 10000,
      "description": "None",
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 1,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": "/media/img/Categories/category_8gnAWow.png"
    },
    "collected": 0
  }
];

// *** done ***
var subCategories = [
  {
    "id": 1,
    "english_name": "Sub1-1",
    "arabic_name": "فرعي1-1",
    "main_category": {
      "id": 1,
      "english_name": "Main1",
      "arabic_name": "اساسي 1",
      "image": "/media/img/Categories/category_uzMtn80.png"
    },
    "image": "/media/img/Categories/category_8gnAWow.png"
  },
  {
    "id": 2,
    "english_name": "Sub-21",
    "arabic_name": "فرعي-21",
    "main_category": {
      "id": 1,
      "english_name": "Main1",
      "arabic_name": "اساسي 1",
      "image": "/media/img/Categories/category_uzMtn80.png"
    },
    "image": "/media/img/Categories/category_XZqvGoV.png"
  },
  {
    "id": 3,
    "english_name": "main12",
    "arabic_name": "اساسي12",
    "main_category": {
      "id": 2,
      "english_name": "Main2",
      "arabic_name": "اساسي 2",
      "image": "/media/img/Categories/category_wt3md91.png"
    },
    "image": "/media/img/Categories/category_DngK3T9.png"
  },
  {
    "id": 5,
    "english_name": "sub 1-1",
    "arabic_name": "فرعي 1-1",
    "main_category": {
      "id": 10,
      "english_name": "cat1",
      "arabic_name": "قسم 1",
      "image": "/media/img/Categories/category.png"
    },
    "image": "/media/img/Categories/category.png"
  },
  {
    "id": 6,
    "english_name": "sub12",
    "arabic_name": "فرعي12",
    "main_category": {
      "id": 6,
      "english_name": "main test2",
      "arabic_name": "اساسي تجربة 1",
      "image": "/media/img/Categories/4.PNG"
    },
    "image": "/media/img/Categories/category.png"
  }
];

// *** Done ***
var projects = [
  {
    "project_id": {
      "id": 25,
      "amount": 564,
      "description": "None",
      "is_urgent": true
    },
    "name": "project 1",
    "collected": 0
  }
];























var tempCaseByCategoryId = [
  {
    "case_id": {
      "id": 23,
      "amount": 10000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 5320
  },


  {
    "case_id": {
      "id": 24,
      "amount": 50000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 2000
  },
  {
    "case_id": {
      "id": 26,
      "amount": 2000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 100
  }
];

var tempCaseByCategoryId2 = [
  {
    "case_id": {
      "id": 1,
      "amount": 18000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 10000
  },


  {
    "case_id": {
      "id": 2,
      "amount": 16000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 4000
  },
  {
    "case_id": {
      "id": 3,
      "amount": 15000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 12500
  },
  {
    "case_id": {
      "id": 4,
      "amount": 15000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected":  17000
  },
  {
    "case_id": {
      "id": 5,
      "amount": 8000,
      "description": '''we are charity, non-profit, fundraising, NGO organizations, Our activities are token, Our activities help all the patients around the glob so help us and be a part of our mission.''',
      "is_urgent": false
    },
    "code": "GZNGGMJX",
    "sub_category": {
      "id": 10,
      "english_name": "Sub1-1",
      "arabic_name": "فرعي1-1",
      "main_category": {
        "id": 1,
        "english_name": "Main1",
        "arabic_name": "اساسي 1",
        "image": "/media/img/Categories/category_uzMtn80.png"
      },
      "image": 'Images/projects/blanket.jpg'
    },
    "collected": 7000
  },
];