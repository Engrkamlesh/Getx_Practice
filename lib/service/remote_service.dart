
import 'package:dart_task/model/postmodel.dart';
import 'package:dio/dio.dart';

final dio = Dio();
class Remote_Service{


// static Future<List<PostModel>> getpostdata()async {
// try {
//   Response response;
//   response = await dio.get('https://jsonplaceholder.typicode.com/posts');
//  print(response.data[0]);
//  if (response.statusCode == 200) {
//   print(response.statusCode);
//    final responseData = response.data;
//       if (responseData is List) {
//           List<PostModel> SalonData = (response.data as List)
//               .map((data) => PostModel.fromJson(data))
//               .toList();
//           return SalonData;
//         } else if (responseData is Map) {
//           List<PostModel> SalonData = (responseData as List)
//               .map((data) => PostModel.fromJson(data))
//               .toList();
//           return SalonData;
//         } else {
//           print('Failed to load posts: ${response.statusCode}');
//         }
//   //  if (responseData is List) {
//   //    List<PostModel> postdata = (response.data as List).map((e) => PostModel.fromJson(e)).toList();
//   //    return postdata;
//   //  }else if(responseData is Map){
//   //   List<PostModel> postdata = (responseData[''] as List).map((e) => PostModel.fromJson(e)).toList();
//   //   return postdata;
//   //  }else{
//   //   return [];
//   //  }
//  }else{
//   print('Something..... Wrong');
//  }
// } catch (e) {
//   print('Post Data Error '+e.toString());
// }
// }


 
  static Future<List<PostModel>> getService() async {
    try {
      // category_model userData;
      Response response;
      response = await dio.get('https://jsonplaceholder.typicode.com/posts');
      // response = await dio.patch(path)    
      print(response.data.toString());
      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData is List) {
          List<PostModel> servicesData = (response.data as List)
              .map((data) => PostModel.fromJson(data))
              .toList();
          return servicesData;
        } else if (responseData is Map) {
          List<PostModel> servicesData = (responseData['data'] as List)
              .map((data) => PostModel.fromJson(data))
              .toList();
          return servicesData;
        } else {
          // throw Exception('Failed to load posts: ${response.statusCode}');
          return [];
        }
      }
      return [];
    } catch (e) {
      print(e);
      // throw Exception('Failed to load posts: $e');
      return [];
    }
  }

}

