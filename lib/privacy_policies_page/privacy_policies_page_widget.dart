import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_policies_page_model.dart';
export 'privacy_policies_page_model.dart';

class PrivacyPoliciesPageWidget extends StatefulWidget {
  const PrivacyPoliciesPageWidget({super.key});

  static String routeName = 'PrivacyPoliciesPage';
  static String routePath = '/privacyPoliciesPage';

  @override
  State<PrivacyPoliciesPageWidget> createState() =>
      _PrivacyPoliciesPageWidgetState();
}

class _PrivacyPoliciesPageWidgetState extends State<PrivacyPoliciesPageWidget> {
  late PrivacyPoliciesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPoliciesPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).marineBlue,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'av08p8um' /* Privacy Policies */,
            ),
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).white,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowWebView(
                  content:
                      'https://drive.google.com/file/d/1y6BPJSNJPWy48pv5Xsy0mbPjFlQKzagc/preview?usp=drive_link',
                  bypass: false,
                  height: 699.96,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
