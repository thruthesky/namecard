import 'package:flutter/material.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
ScaffoldMessengerState get scaffoldMessengerState => scaffoldMessengerKey.currentState;
