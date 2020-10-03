import 'package:flutter/foundation.dart';
import 'package:start/app/services/api.dart';
import 'package:start/app/services/endpoint_data.dart';

class EndpointsData {
  EndpointsData({@required this.values});
  final Map<Endpoint, EndpointData> values;
  EndpointData get cases =>
      values[Endpoint.cases]; //makes EndpointsData easier to query
  EndpointData get casesSuspected => values[Endpoint.casesSuspected];
  EndpointData get casesConfirmed => values[Endpoint.casesConfirmed];
  EndpointData get deaths => values[Endpoint.deaths];
  EndpointData get recovered => values[Endpoint.recovered];

  //debug
  @override
  String toString() =>
      'cases: $cases, suspected: $casesSuspected, confirmed: $casesConfirmed, deaths: $deaths, recovered: $recovered';
}
