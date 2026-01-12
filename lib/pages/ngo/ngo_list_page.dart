import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'list_n_g_os_model.dart';
export 'list_n_g_os_model.dart';

class ListNGOsWidget extends StatefulWidget {
  const ListNGOsWidget({super.key});

  static String routeName = 'ListNGOs';
  static String routePath = '/listNGOs';

  @override
  State<ListNGOsWidget> createState() => _ListNGOsWidgetState();
}

class _ListNGOsWidgetState extends State<ListNGOsWidget>
    with TickerProviderStateMixin {
  late ListNGOsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListNGOsModel());

    _model.textController ??=
        TextEditingController(text: FFAppState().searchQuery);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Select NGO',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
              font: GoogleFonts.interTight(
                fontWeight:
                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                fontStyle:
                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight:
              FlutterFlowTheme.of(context).headlineSmall.fontWeight,
              fontStyle:
              FlutterFlowTheme.of(context).headlineSmall.fontStyle,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelText: 'Search for NGOs nearby ...',
                    labelStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: FlutterFlowTheme.of(context)
                            .labelMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .labelMedium
                          .fontWeight,
                      fontStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .fontStyle,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .fontWeight,
                      fontStyle:
                      FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                    FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                    FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  maxLines: null,
                  validator:
                  _model.textControllerValidator.asValidator(context),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                    child: Text(
                      'NGO  matching search',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FlutterFlowTheme.of(context)
                            .labelMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .fontStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 12, 16, 0),
                    child: Text(
                      '0',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .fontStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      queryBuilder: (usersRecord) => usersRecord
                          .where(
                        'ngoName',
                        isGreaterThanOrEqualTo:
                        _model.textController.text != ''
                            ? _model.textController.text
                            : null,
                      )
                          .where(
                        'role',
                        isEqualTo: Roles.ngo.serialize(),
                      )
                          .orderBy('ngoName'),
                      limit: 10,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<UsersRecord> listViewUsersRecordList =
                      snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewUsersRecordList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 2),
                        itemBuilder: (context, listViewIndex) {
                          final listViewUsersRecord =
                          listViewUsersRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().selectedNgo =
                                    listViewUsersRecord.ngoName;
                                safeSetState(() {});
                              },
                              child: Container(
                                width: 371.1,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      offset: Offset(
                                        0.0,
                                        1,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                  ),
                                  border: Border.all(
                                    color: FFAppState().selectedNgo != null &&
                                        FFAppState().selectedNgo != ''
                                        ? FlutterFlowTheme.of(context).tertiary
                                        : Color(0x83000000),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          'assets/images/ngoIcon.jpg',
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                listViewUsersRecord.ngoName,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                  font:
                                                  GoogleFonts.inter(
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .fontWeight,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .fontStyle,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 0, 0, 0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        listViewUsersRecord
                                                            .location
                                                            ?.toString(),
                                                        'Delhi',
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font:
                                                        GoogleFonts
                                                            .inter(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        4, 0, 0, 0),
                                                    child: Text(
                                                      listViewUsersRecord.email,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font:
                                                        GoogleFonts
                                                            .inter(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Card(
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(40),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.keyboard_arrow_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
