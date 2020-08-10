import 'package:http/http.dart' as http;
import 'dart:convert';
// String mytrackid;
Future tracking(String trackid)async{
  String url = 'https://eshba.dollarstir.com/api/track.php';
  
  final response = await http.post(url,
    
    // headers: {"Accept": "application/json"},
    
    body: {'trackid' : trackid}
  );  

  var conVertDatatojson = jsonDecode(response.body);
  return conVertDatatojson;
}