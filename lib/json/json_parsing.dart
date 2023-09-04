import 'package:flutter/material.dart';
import 'package:http/http.dart';

class jsonparsing extends StatefulWidget {
  const jsonparsing({Key? key}) : super(key: key);

  @override
  State<jsonparsing> createState() => _jsonparsingState();
}

class _jsonparsingState extends State<jsonparsing> {
  late Future data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=Network("https://jsonplaceholder.typicode.com/posts").fetchData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: double.infinity,
    );

  }
  Future getdata() async{
    var data;
    String url="https://jsonplaceholder.typicode.com/posts";
    Network network=Network(url);
    data=network.fetchData();
    return data;
  }
}
class Network{
  final String url;

  Network(this.url);
  Future fetchData() async {
    print("$url");
    Response response = await get(Uri.encodeFull(url) as Uri);
    if(response.statusCode==200){
      print(response.body[0]);
      return response.body;
    }else{
      print(response.statusCode);
    }
  }
}