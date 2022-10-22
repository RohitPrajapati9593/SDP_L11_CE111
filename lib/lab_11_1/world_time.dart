import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  String? location; // REAL LOCATION NAME FOR UI

  String? time; // the time in that location..
  String? flag; // flag images related to location country...do it your
  // self
  String? url;

  // end point of static url...which will change every time
  // when location will change

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
// Make Request for time and receive response
      Response response = await
//From Here URL was removed
      get(Uri.parse(
          'http://worldtimeapi.org/api/timezone/$url')); //
      // Asia/Kolkata
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset']; //not dst_offset
      String offsetHours = offset.substring(1, 3);
      String offsetMinutes = offset.substring(4, 6);
      DateTime currenttime = DateTime.parse(dateTime);
      currenttime = currenttime.add(Duration(
          minutes: int.parse(offsetMinutes), hours:
      int.parse(offsetHours)));

      // time = currenttime.toString();

      time = DateFormat.jm().format(currenttime);
    }
    catch( e){
    print('caught error:$e');
    time='could not get date and time';
    }
  }
}
/*
class WorldTime {
  String? location; // REAL LOCATION NAME FOR UI

  String? time; // the time in that location..
  String? flag; // flag images related to location country...do it your
  // self
  String? url;

  // end point of static url...which will change every time
  // when location will change

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
// Make Request for time and receive response
      Response response = await
//From Here URL was removed
      get(Uri.parse(
          'http://worldtimeapi.org/api/timezone/$url')); //
      // Asia/Kolkata
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset']; //not dst_offset
      String offsetHours = offset.substring(1, 3);
      String offsetMinutes = offset.substring(4, 6);
      DateTime currenttime = DateTime.parse(dateTime);
      currenttime = currenttime.add(Duration(
          minutes: int.parse(offsetMinutes), hours:
      int.parse(offsetHours)));

       time = currenttime.toString();

    }
    catch( e){
      print('caught error:$e');
      time='could not get time data';
    }
  }
}
*/

/*
class WorldTime {
  String? location; // REAL LOCATION NAME FOR UI

  String? time; // the time in that location..
  String? flag; // flag images related to location country...do it your
  // self
  String? url;

  // end point of static url...which will change every time
  // when location will change

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    // try {
// Make Request for time and receive response
      Response response = await
//From Here URL was removed
      get(Uri.parse(
          'http://worldtimeapi.org/api/timezone/$url')); //
      // Asia/Kolkata
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset']; //not dst_offset
      String offsetHours = offset.substring(1, 3);
      String offsetMinutes = offset.substring(4, 6);
      DateTime currenttime = DateTime.parse(dateTime);
      currenttime = currenttime.add(Duration(
          minutes: int.parse(offsetMinutes), hours:
      int.parse(offsetHours)));

       time = currenttime.toString();

    }
    // catch( e){
    //   print('caught error:$e');
    // }
  }
// }
*/


/*
class WorldTime {
  String? location; // REAL LOCATION NAME FOR UI

  String? time; // the time in that location..
  String? flag; // flag images related to location country...do it your
  // self
  String? url;

  // end point of static url...which will change every time
  // when location will change

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
// Make Request for time and receive response
      Response response = await
//From Here URL was removed
      get(Uri.parse(
          'http://worldtimeapi.org/api/timezone/$url')); //
      // Asia/Kolkata
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset']; //not dst_offset
      String offsetHours = offset.substring(1, 3);
      String offsetMinutes = offset.substring(4, 6);
      DateTime currenttime = DateTime.parse(dateTime);
      currenttime = currenttime.add(Duration(
          minutes: int.parse(offsetMinutes), hours:
      int.parse(offsetHours)));

      time = currenttime.toString();

    }
    catch( e){
      print('caught error:$e');
    }
  }
}
*/