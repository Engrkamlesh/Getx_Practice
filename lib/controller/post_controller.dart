
import 'package:dart_task/service/remote_service.dart';
import 'package:get/get.dart';

class Post_Controller extends GetxController{

var postdata = [].obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  var responseData = ''.obs;
  var isLoading = false.obs;

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      // Make the API request using the Dio instance
      var response = await dio.get('https://jsonplaceholder.typicode.com/posts');
      // Process the API response
      postdata.value = response.data;
      print(postdata[2].toString());
    } catch (error) {
      // Handle any errors that occur during the request
      print('Error: $error');
    } finally {
      isLoading.value = false;
    }
  }


void fetchpostData(){
  var fetchData = Remote_Service.getService();
  if (fetchData != null) {
    postdata.value = fetchData as List;
  }
}

}