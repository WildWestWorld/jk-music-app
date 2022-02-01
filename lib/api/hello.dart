import 'package:http/http.dart' as http;

//后端请求地址
const String baseUrl ='https://jk-music-1577517-1309371796.ap-shanghai.run.tcloudbase.com';

//Future差不多等于promise
Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse(baseUrl+'/hello'));

  if (response.statusCode == 200) {

    //string格式就直接返回response.body就行了
    return response.body;

    //json格式的时候是这么写的
    // return Album.fromJson(jsonDecode(response.body));

  } else {

    throw Exception('请求错误');
  }
}