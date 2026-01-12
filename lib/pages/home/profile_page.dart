import '/auth/firebase_auth/auth_util.dart';
import '/components/donation_history_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'profilepage_model.dart';
export 'profilepage_model.dart';

/// Create a mobile profile page for a food donation app called FoodSave.
///
/// Design:
/// - Top full-width green header
/// - Back arrow on the left
/// - Circular profile avatar
/// - User name in bold
/// - Email and phone number below the name in smaller text
///
/// Stats Section:
/// - White rounded card overlapping the header
/// - Three columns: Donations, People Fed, Points
/// - Numbers bold, labels small
///
/// Donation History:
/// - Title “Donation History”
/// - List of rounded cards with:
///   Event name, NGO name, date
///   Meals count on the right
///   Points earned in green
///   Status badge “Completed”
///
/// Impact Summary:
/// - Title “Impact Summary”
/// - Three rounded cards:
///   Food Saved (kg), CO2 Saved (kg), Streak (days)
/// - Each card with icon and value
///
/// Settings:
/// - List items with icon and arrow:
///   Account Settings, Notifications, Privacy & Security, Help & Support
///
/// Bottom:
/// - Red outlined logout button
/// - Bottom navigation bar with Home, Donate, Rewards, Profile active
///
/// Use simple fonts, rounded corners, soft shadows, clean spacing.
class ProfilepageWidget extends StatefulWidget {
  const ProfilepageWidget({super.key});

  static String routeName = 'profilepage';
  static String routePath = '/profilepage';

  @override
  State<ProfilepageWidget> createState() => _ProfilepageWidgetState();
}

class _ProfilepageWidgetState extends State<ProfilepageWidget> {
  late ProfilepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilepageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(-1.4, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 0),
                child: Text(
                  'back',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontStyle,
                    ),
                    color: Colors.white,
                    fontSize: 22,
                    letterSpacing: 0.0,
                    fontWeight: FlutterFlowTheme.of(context)
                        .headlineMedium
                        .fontWeight,
                    fontStyle: FlutterFlowTheme.of(context)
                        .headlineMedium
                        .fontStyle,
                  ),
                ),
              ),
            ),
            actions: [],
            centerTitle: false,
            toolbarHeight: 60,
            elevation: 0,
          ),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: FlutterFlowIconButton(
                            borderRadius: 50,
                            buttonSize: 90,
                            fillColor: Color(0x63E0E3E7),
                            icon: Icon(
                              Icons.person,
                              color: Color(0xA3FFFFFF),
                              size: 60,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.8,
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault(
                                        currentUserDocument?.name, ''),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.normal,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 25,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Text(
                                currentUserEmail,
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xA9F1F4F8),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(width: 20)),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: double.infinity,
                        height: 103,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Color(0x1A000000),
                              offset: Offset(
                                0.0,
                                2,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Opacity(
                                      opacity: 0.9,
                                      child: Text(
                                        '127',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                          ),
                                          color: Color(0xFE06AE14),
                                          fontSize: 25,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Donations',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '340',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .fontStyle,
                                        ),
                                        color: Color(0xFFE55439),
                                        fontSize: 25,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      'People Fed',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2450',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .fontStyle,
                                        ),
                                        color: Color(0xFF1619B1),
                                        fontSize: 25,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      'Points',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 0.8,
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                  child: Text(
                    'Donation History',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .fontStyle,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.donationHistoryCardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: DonationHistoryCardWidget(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x0D000000),
                              offset: Offset(
                                0.0,
                                1,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.7,
                                      child: Text(
                                        'School Lunch Program',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .fontStyle,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 2),
                                      child: Text(
                                        'Education First NGO',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                            FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .fontWeight,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .fontStyle,
                                          ),
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .fontStyle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'March 10, 2024',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: 0.6,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 2, 8, 2),
                                              child: Container(
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondary,
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                child: Opacity(
                                                  opacity: 0.6,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Text(
                                                      'Completed',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .labelSmall
                                                          .override(
                                                        font: GoogleFonts
                                                            .inter(
                                                          fontWeight:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .labelSmall
                                                              .fontWeight,
                                                          fontStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .labelSmall
                                                              .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelSmall
                                                            .fontWeight,
                                                        fontStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelSmall
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '+120 points',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .fontStyle,
                                              ),
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .secondary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelSmall
                                                  .fontStyle,
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      '62',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .fontStyle,
                                        ),
                                        color: Color(0xDD081211),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'meals',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                      font: GoogleFonts.inter(
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight:
                                      FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 6),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x0D000000),
                                offset: Offset(
                                  0.0,
                                  1,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          'Weekend Food Bank',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .titleMedium
                                                  .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .fontStyle,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 2),
                                        child: Text(
                                          'City Relief Center',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .bodySmall
                                                  .fontWeight,
                                              fontStyle:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .bodySmall
                                                  .fontStyle,
                                            ),
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                            FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .fontWeight,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .fontStyle,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'March 5, 2024',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                            FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .fontWeight,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .fontStyle,
                                          ),
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .fontStyle,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Opacity(
                                              opacity: 0.6,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 2, 8, 2),
                                                child: Container(
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondary,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Text(
                                                      'Completed',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .labelSmall
                                                          .override(
                                                        font: GoogleFonts
                                                            .inter(
                                                          fontWeight:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .labelSmall
                                                              .fontWeight,
                                                          fontStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .labelSmall
                                                              .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelSmall
                                                            .fontWeight,
                                                        fontStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelSmall
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '+95 points',
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .labelSmall
                                                  .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .secondary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .fontStyle,
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '48',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .fontStyle,
                                        ),
                                        color: Color(0xAB031616),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      'meals',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                        child: Text(
                          'Impact Summary',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                width: 100,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x0D000000),
                                      offset: Offset(
                                        0.0,
                                        1,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0x6E14181B),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.restaurant_rounded,
                                        color: Colors.green,
                                        size: 32,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 4),
                                        child: Text(
                                          '245',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .titleLarge
                                                  .fontStyle,
                                            ),
                                            color: Color(0xFF2E7D32),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontStyle,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'kg Food Saved',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                            FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .fontWeight,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .fontStyle,
                                          ),
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x0D000000),
                                      offset: Offset(
                                        0.0,
                                        1,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0x6714181B),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.eco_rounded,
                                        color: Colors.green,
                                        size: 32,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 4),
                                        child: Text(
                                          '180',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .titleLarge
                                                  .fontStyle,
                                            ),
                                            color: Color(0xFF2E7D32),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontStyle,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'kg CO2 Saved',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                            FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .fontWeight,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .fontStyle,
                                          ),
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x0D000000),
                                    offset: Offset(
                                      0.0,
                                      1,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: Color(0x6914181B),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_fire_department_rounded,
                                      color: Colors.green,
                                      size: 32,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 4),
                                      child: Text(
                                        '28',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontStyle,
                                          ),
                                          color: Color(0xFF2E7D32),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .fontStyle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Day Streak',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 12)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Container(
                        constraints: BoxConstraints(
                          minHeight: 16,
                        ),
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(24, 0, 24, 100),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 32, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.settings_rounded,
                                                      color: Color(0xFF666666),
                                                      size: 24,
                                                    ),
                                                    Text(
                                                      'Account Settings',
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font:
                                                        GoogleFonts
                                                            .inter(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(width: 16)),
                                                ),
                                                Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF666666),
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Color(0xFFE0E0E0),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .notifications_rounded,
                                                      color: Color(0xFF666666),
                                                      size: 24,
                                                    ),
                                                    Text(
                                                      'Notifications',
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font:
                                                        GoogleFonts
                                                            .inter(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(width: 16)),
                                                ),
                                                Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF666666),
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Color(0xFFE0E0E0),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.security_rounded,
                                                      color: Color(0xFF666666),
                                                      size: 24,
                                                    ),
                                                    Text(
                                                      'Privacy & Security',
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font:
                                                        GoogleFonts
                                                            .inter(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(width: 16)),
                                                ),
                                                Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF666666),
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Color(0xFFE0E0E0),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.help_rounded,
                                                      color: Color(0xFF666666),
                                                      size: 24,
                                                    ),
                                                    Text(
                                                      'Help & Support',
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font:
                                                        GoogleFonts
                                                            .inter(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ].divide(SizedBox(width: 16)),
                                                ),
                                                Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF666666),
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 1)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 32, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          RolePageWidget.routeName,
                                          context.mounted);
                                    },
                                    text: 'Logout',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50,
                                      padding: EdgeInsets.all(8),
                                      iconPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .fontStyle,
                                        ),
                                        color: Colors.red,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
