import 'package:flutter_svg/svg.dart';

class Functionality {
  final String _id;
  final String _title;
  final SvgPicture _image;
  final String _route;

  const Functionality(this._id, this._title, this._image, this._route);

  String get getId {
    return _id;
  }
  String get getTitle {
    return _title;
  }
  SvgPicture get getImage {
    return _image;
  }
  String get getRoute {
    return _route;
  }
}