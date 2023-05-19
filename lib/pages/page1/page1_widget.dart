import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/page2/page2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page1_model.dart';
export 'page1_model.dart';

class Page1Widget extends StatefulWidget {
  const Page1Widget({Key? key}) : super(key: key);

  @override
  _Page1WidgetState createState() => _Page1WidgetState();
}

class _Page1WidgetState extends State<Page1Widget> {
  late Page1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.bottomToTop,
          duration: Duration(milliseconds: 5),
          reverseDuration: Duration(milliseconds: 5),
          child: Page2Widget(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFEBEAF0),
        body: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: Duration(milliseconds: 5),
                reverseDuration: Duration(milliseconds: 5),
                child: Page2Widget(),
              ),
            );
          },
          child: Container(
            width: 397.0,
            height: 858.0,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/photo_2023-05-19_18-01-47.jpg',
                      width: 398.0,
                      height: 858.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
