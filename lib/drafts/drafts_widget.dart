import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/create_draft_widget.dart';
import '../components/edit_draft_widget.dart';
import '../components/empty_list_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DraftsWidget extends StatefulWidget {
  const DraftsWidget({Key key}) : super(key: key);

  @override
  _DraftsWidgetState createState() => _DraftsWidgetState();
}

class _DraftsWidgetState extends State<DraftsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Borradores',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: CreateDraftWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add_rounded,
          color: FlutterFlowTheme.of(context).textColor,
          size: 36,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: StreamBuilder<List<DraftsRecord>>(
                  stream: queryDraftsRecord(
                    queryBuilder: (draftsRecord) =>
                        draftsRecord.where('uid', isEqualTo: currentUserUid),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: SpinKitDoubleBounce(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 40,
                          ),
                        ),
                      );
                    }
                    List<DraftsRecord> gridViewDraftsRecordList = snapshot.data;
                    if (gridViewDraftsRecordList.isEmpty) {
                      return Center(
                        child: EmptyListWidget(
                          item: 'Borradores',
                        ),
                      );
                    }
                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        childAspectRatio: 1,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewDraftsRecordList.length,
                      itemBuilder: (context, gridViewIndex) {
                        final gridViewDraftsRecord =
                            gridViewDraftsRecordList[gridViewIndex];
                        return InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.9,
                                    child: EditDraftWidget(
                                      draft: gridViewDraftsRecord,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Stack(
                            children: [
                              Image.network(
                                valueOrDefault<String>(
                                  gridViewDraftsRecord.image,
                                  'https://firebasestorage.googleapis.com/v0/b/quickorganizer-d6049.appspot.com/o/images%2Fimage_search.png?alt=media&token=a78996af-5082-4fba-a9bf-e0b596e1688c',
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 1,
                                fit: BoxFit.cover,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.4),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Text(
                                    gridViewDraftsRecord.title,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .textColor,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  constraints: BoxConstraints(
                                    maxHeight: 80,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0x2A302F2F),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.05),
                                    child: Text(
                                      gridViewDraftsRecord.description,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.03, -1.06),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.delete_forever_rounded,
                                    color: Color(0xB0F97070),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    await gridViewDraftsRecord.reference
                                        .delete();
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
