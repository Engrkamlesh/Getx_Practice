class PostModel{
final int id;
final String title;
final String description;

PostModel({required this.id,required this.title,required this.description});


  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['body'] = this.body;
  //   return data;
  // }

Map<String, dynamic>tojson()=>{
  'id':id,
  'title':title,
  'description':description
};

factory PostModel.fromJson(Map<String , dynamic> json){
  return PostModel(
    id: json['id'],
    title: json['title'],
    description: json['title']
    );
}


}