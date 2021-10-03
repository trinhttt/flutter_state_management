import 'package:getx_demo/providers/api_provider.dart';
import 'package:http/http.dart' as http;

class APIService {
  String data = '';

  void fetchData() {
    Future<void> fetchData() async {
      data = "Data 1";
    }

    // ApiProvider apiProvider = ApiProvider();
    //
    // var data = await apiProvider.getData('https://api.covid19api.com');
    var dataFromAPI = await http.get(Uri.parse('https://api.covid19api.com'));
    var body = dataFromAPI.body;
    print(body);
  }