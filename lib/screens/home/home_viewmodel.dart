// import 'dart:convert';

// import 'package:stacked/stacked.dart';
// import 'package:http/http.dart' as http;

// class HomeViewModel extends BaseViewModel {
//   String baseUrl = "https://crudcrud.com/api/1e03edcf58c54990b9aae9ed2f91d31c";

//   postData() async {
//     var url = Uri.https(baseUrl, "unicorns");
//     var body = jsonEncode({
//       {"name": " Angel", "age": 9, "colour": "red"},
//     });
//     var response = await http.post(url,
//         headers: {'Content-Type': 'application/json;charset-UTF-8'},
//         body: {body});
//     print(response);
//   }
// }

//      >>>>> i- POST API <<<<<<

import 'dart:convert';

import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class HomeViewModel extends BaseViewModel {
  String baseUrl = "https://crudcrud.com/api/1e03edcf58c54990b9aae9ed2f91d31c";

  postData() async {
    var url = Uri.https(baseUrl, "unicorns");
    // Uri.parse("$baseUrl/unicorns");
    var body = jsonEncode({
      "name": "Angel",
      "age": 9,
      "colour": "red",
    });
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json;charset=UTF-8'},
      body: body,
    );
    print(response);
  }
}

//             >>>>>>>>> ii- PUT API <<<<<<<<<<<

class PutHomeViewModel extends BaseViewModel {
  String baseUrl = "https://crudcrud.com/api/1e03edcf58c54990b9aae9ed2f91d31c";

  postData() async {
    // 1) give id to update the fields
    var url = Uri.https(
        baseUrl, "/api/1e03edcf58c54990b9aae9ed2f91d31c/unicorns/giveid");

    // 2) update the fields
    var body = jsonEncode({
      "colour": "yellow",
    });

    // 3) replace http.put()
    var response = await http.put(
      url,
      headers: {'Content-Type': 'application/json;charset=UTF-8'},
      body: body,
    );
    print(response);
  }
}

//                 >>>>> iii- DELETE API  <<<<<<<

class DeleteHomeViewModel extends BaseViewModel {
  String baseUrl = "https://crudcrud.com/api/1e03edcf58c54990b9aae9ed2f91d31c";

  postData() async {
    // 1) give id to update the fields
    var url = Uri.https(
        baseUrl, "/api/1e03edcf58c54990b9aae9ed2f91d31c/unicorns/giveid");

    // 2) remove body
    // 3) replace http.delete()
    var response = await http.delete(
      url,
      headers: {'Content-Type': 'application/json;charset=UTF-8'},
    );
    print(response);
  }
}

//       >>>>>>>>>>> iv- GET API  <<<<<<<<<<

getPosts() async {
  var url = Uri.http("jsonplaceholder.typicode.com", "/posts");
  var response = await http.get(url);
  var responseBody = jsonDecode(response.body);
  // ignore: avoid_print
  print(responseBody[0]["body"]);
}
