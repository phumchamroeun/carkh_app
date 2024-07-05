

import 'package:carkh_app/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService{
  Future<List<Welcome>?>getPosts() async{
    var client = http.Client();
    var uri  = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await client.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
     return welcomeFromJson(json);
    }
  }
}