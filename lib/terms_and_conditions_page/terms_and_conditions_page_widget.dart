import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_and_conditions_page_model.dart';
export 'terms_and_conditions_page_model.dart';

class TermsAndConditionsPageWidget extends StatefulWidget {
  const TermsAndConditionsPageWidget({
    super.key,
    String? termsPDFUrl,
  }) : this.termsPDFUrl = termsPDFUrl ??
            'https://drive.google.com/viewerng/viewer?embedded=true&url=https://firebasestorage.googleapis.com/v0/b/fblaconnect-1b2a4.firebasestorage.app/o/TERMS%20%26%20CONDITIONS.pdf?alt=media&token=b5bec6fd-6b6d-43af-bd08-cadad90527b3';

  final String termsPDFUrl;

  static String routeName = 'TermsAndConditionsPage';
  static String routePath = '/termsAndConditionsPage';

  @override
  State<TermsAndConditionsPageWidget> createState() =>
      _TermsAndConditionsPageWidgetState();
}

class _TermsAndConditionsPageWidgetState
    extends State<TermsAndConditionsPageWidget> {
  late TermsAndConditionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsPageModel());
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
              'mwkaqb3j' /* Terms and Conditions */,
            ),
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).white,
                  fontSize: 29.0,
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
                      'https://drive.google.com/file/d/1ERm1TVK8f698CqOGwynsxcmGoOD2cnOb/preview?usp=drive_link',
                  bypass: false,
                  height: 700.9,
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
