

class App_Exception implements Exception{
  final _message;
  final _prefix;
  App_Exception([this._message, this._prefix]);
  String tostring(){
    return '$_message$_prefix';
  }
}

class InternetException extends App_Exception{
  InternetException([String? message]) : super(message, 'No Message');
}

class RequestTimeOut extends App_Exception{
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends App_Exception{
  ServerException([String? message]) : super(message, 'Server Exception');
}

