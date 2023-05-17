// /// status : "success"
// /// results : 3
// /// data : [{"id":3,"name":"Salon2","description":"Salon description","phone_number":"1234567890","mobile_number":"1234567890","document":"https://example.com/image.jpg","address":"01GZZVVGX5QMBC8478P7BX1ZEE","latitude":"33.00000000","longitude":"23.00000000","salon_owner":2,"availability_range":5,"isApproved":0,"isActive":1,"created_at":"2023-05-11T09:20:24.000Z","updated_at":"2023-05-11T09:20:24.000Z"},{"id":2,"name":"Salon Name","description":"Salon description","phone_number":"1234567890","mobile_number":"1234567890","document":"https://example.com/image.jpg","address":"01GZZVVGX5QMBC8478P7BX1ZEE","latitude":"33.00000000","longitude":"23.00000000","salon_owner":2,"availability_range":5,"isApproved":0,"isActive":1,"created_at":"2023-05-11T09:20:05.000Z","updated_at":"2023-05-11T09:20:05.000Z"},{"id":1,"name":"Salon Name","description":"Salon description","phone_number":"1234567890","mobile_number":"1234567890","document":"https://example.com/image.jpg","address":"01GZZVVGX5QMBC8478P7BX1ZEE","latitude":"33.00000000","longitude":"23.00000000","salon_owner":2,"availability_range":5,"isApproved":0,"isActive":1,"created_at":"2023-05-11T09:19:32.000Z","updated_at":"2023-05-11T09:19:32.000Z"}]

// class RecommededCardModel {
//   RecommededCardModel({
//       String status, 
//       num results, 
//       List<Data> data,}){
//     _status = status;
//     _results = results;
//     _data = data;
// }

//   RecommededCardModel.fromJson(dynamic json) {
//     _status = json['status'];
//     _results = json['results'];
//     if (json['data'] != null) {
//       _data = [];
//       json['data'].forEach((v) {
//         _data.add(Data.fromJson(v));
//       });
//     }
//   }
//   String _status;
//   num _results;
//   List<Data> _data;
// RecommededCardModel copyWith({  String status,
//   num results,
//   List<Data> data,
// }) => RecommededCardModel(  status: status ?? _status,
//   results: results ?? _results,
//   data: data ?? _data,
// );
//   String get status => _status;
//   num get results => _results;
//   List<Data> get data => _data;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['status'] = _status;
//     map['results'] = _results;
//     if (_data != null) {
//       map['data'] = _data.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }

// }

// /// id : 3
// /// name : "Salon2"
// /// description : "Salon description"
// /// phone_number : "1234567890"
// /// mobile_number : "1234567890"
// /// document : "https://example.com/image.jpg"
// /// address : "01GZZVVGX5QMBC8478P7BX1ZEE"
// /// latitude : "33.00000000"
// /// longitude : "23.00000000"
// /// salon_owner : 2
// /// availability_range : 5
// /// isApproved : 0
// /// isActive : 1
// /// created_at : "2023-05-11T09:20:24.000Z"
// /// updated_at : "2023-05-11T09:20:24.000Z"

// class Data {
//   Data({
//       num id, 
//       String name, 
//       String description, 
//       String phoneNumber, 
//       String mobileNumber, 
//       String document, 
//       String address, 
//       String latitude, 
//       String longitude, 
//       num salonOwner, 
//       num availabilityRange, 
//       num isApproved, 
//       num isActive, 
//       String createdAt, 
//       String updatedAt,}){
//     _id = id;
//     _name = name;
//     _description = description;
//     _phoneNumber = phoneNumber;
//     _mobileNumber = mobileNumber;
//     _document = document;
//     _address = address;
//     _latitude = latitude;
//     _longitude = longitude;
//     _salonOwner = salonOwner;
//     _availabilityRange = availabilityRange;
//     _isApproved = isApproved;
//     _isActive = isActive;
//     _createdAt = createdAt;
//     _updatedAt = updatedAt;
// }

//   Data.fromJson(dynamic json) {
//     _id = json['id'];
//     _name = json['name'];
//     _description = json['description'];
//     _phoneNumber = json['phone_number'];
//     _mobileNumber = json['mobile_number'];
//     _document = json['document'];
//     _address = json['address'];
//     _latitude = json['latitude'];
//     _longitude = json['longitude'];
//     _salonOwner = json['salon_owner'];
//     _availabilityRange = json['availability_range'];
//     _isApproved = json['isApproved'];
//     _isActive = json['isActive'];
//     _createdAt = json['created_at'];
//     _updatedAt = json['updated_at'];
//   }
//   num _id;
//   String _name;
//   String _description;
//   String _phoneNumber;
//   String _mobileNumber;
//   String _document;
//   String _address;
//   String _latitude;
//   String _longitude;
//   num _salonOwner;
//   num _availabilityRange;
//   num _isApproved;
//   num _isActive;
//   String _createdAt;
//   String _updatedAt;
// Data copyWith({  num id,
//   String name,
//   String description,
//   String phoneNumber,
//   String mobileNumber,
//   String document,
//   String address,
//   String latitude,
//   String longitude,
//   num salonOwner,
//   num availabilityRange,
//   num isApproved,
//   num isActive,
//   String createdAt,
//   String updatedAt,
// }) => Data(  id: id ?? _id,
//   name: name ?? _name,
//   description: description ?? _description,
//   phoneNumber: phoneNumber ?? _phoneNumber,
//   mobileNumber: mobileNumber ?? _mobileNumber,
//   document: document ?? _document,
//   address: address ?? _address,
//   latitude: latitude ?? _latitude,
//   longitude: longitude ?? _longitude,
//   salonOwner: salonOwner ?? _salonOwner,
//   availabilityRange: availabilityRange ?? _availabilityRange,
//   isApproved: isApproved ?? _isApproved,
//   isActive: isActive ?? _isActive,
//   createdAt: createdAt ?? _createdAt,
//   updatedAt: updatedAt ?? _updatedAt,
// );
//   num get id => _id;
//   String get name => _name;
//   String get description => _description;
//   String get phoneNumber => _phoneNumber;
//   String get mobileNumber => _mobileNumber;
//   String get document => _document;
//   String get address => _address;
//   String get latitude => _latitude;
//   String get longitude => _longitude;
//   num get salonOwner => _salonOwner;
//   num get availabilityRange => _availabilityRange;
//   num get isApproved => _isApproved;
//   num get isActive => _isActive;
//   String get createdAt => _createdAt;
//   String get updatedAt => _updatedAt;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['name'] = _name;
//     map['description'] = _description;
//     map['phone_number'] = _phoneNumber;
//     map['mobile_number'] = _mobileNumber;
//     map['document'] = _document;
//     map['address'] = _address;
//     map['latitude'] = _latitude;
//     map['longitude'] = _longitude;
//     map['salon_owner'] = _salonOwner;
//     map['availability_range'] = _availabilityRange;
//     map['isApproved'] = _isApproved;
//     map['isActive'] = _isActive;
//     map['created_at'] = _createdAt;
//     map['updated_at'] = _updatedAt;
//     return map;
//   }

// }