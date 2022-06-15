import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameCardProfileWidget extends StatefulWidget {
  const NameCardProfileWidget({Key key}) : super(key: key);

  @override
  _NameCardProfileWidgetState createState() => _NameCardProfileWidgetState();
}

class _NameCardProfileWidgetState extends State<NameCardProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
          child: Container(
            width: 120,
            height: 120,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/2020-11-23_14-45-08.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
          child: Text(
            'Email: thruthesky@gmail.com',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
          child: Text(
            '010-8693-4225',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
      ],
    );
  }
}
