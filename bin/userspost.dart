import 'package:http/http.dart' as http;

import 'dart:convert';

void main(List<String> arguments) async {
  //await usersid(id: 3);
  await getUsersData(id: 2);
}

Future getUsersData({id = 1}) async {
  try {
    var response = await http.get('https://jsonplaceholder.typicode.com/users');
    var jsonTransfor = json.decode(response.body);

    if (response.statusCode == 200) {
      for (var i = 0; i < jsonTransfor.length; i++) {
        //print(jsonTransfor[i]);
        if(jsonTransfor[i]['id']== id){
          print(jsonTransfor[i]);
        }
      }
    }
  } catch (e) {
    print('Error $e');
  }
}

// METHODE 1
// Future usersid({int id = 1}) async {
//   try {
//     var perso = await http.get('https://jsonplaceholder.typicode.com/users');
//     var resp = json.decode(perso.body);
//     if (perso.statusCode == 200) {
//       // print(resp['address']);
//       for (var i = 0; i < resp.length; i++) {
//         if(resp[i]['id'] == id){
//         print(resp[i]['name']);
//         print('==================');
//         print(resp[i]['username']);
//         print('==================');
//         //print(resp[i]['address']);
//         print( {resp[i]['address']['street']});
//         }
//       }
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// // METHODE 2

// Future trouverUnElementAPartirDeSonIDParUrl({int id = 1}) async {
//   try {
//     var perso = await http.get('https://jsonplaceholder.typicode.com/users/$id');
//     var resp = json.decode(perso.body);
//     if (perso.statusCode == 200) {
//       // print(resp['address']);

//     }
//   } catch (e) {
//     print(e);
//   }
//}
