/*import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

SharedPreferences? landscapeghSP;

// I am feeling lazy to go through all the services files to
// change the stageBaseUrls to productionBaseUrls so I am just
// going to replace the stageBaseUrls with the correct production
// url and comment out the original stageBa

// Using this to set stageBaseUrl depending on the run profile being used
// whether debug or otherwise

String baseUrl = "";
String socketBaseUrl = "";
String socketAddUrl = "";

String paramstageBaseUrl = "";

void changeBaseUrlValue() {
  if (kDebugMode) {
    baseUrl = "http://landsensegh.cersgis.org/api/v1/";
  } else {
    baseUrl = "http://landsensegh.cersgis.org/api/v1/";
  }
}

// https://servir-dev.cersgis.org/landscape-gh/api/v1/
// url appendages
String makeReportEndpoint = "data-submissions";

////////////////////////////////////////////////////////////
var newdate = DateTime.now();
var formatDate = DateFormat('y-MM-dd');
String formattedDate = formatDate.format(newdate);

var uuid = const Uuid();
*/