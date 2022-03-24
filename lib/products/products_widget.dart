import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/create_supplier_widget.dart';
import '../components/edit_supplier_widget.dart';
import '../components/empty_list_widget.dart';
import '../create_product1/create_product1_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../product_detail/product_detail_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({Key key}) : super(key: key);

  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.of(context).textColor,
                      labelPadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      labelStyle: FlutterFlowTheme.of(context).subtitle1,
                      indicatorColor: FlutterFlowTheme.of(context).textColor,
                      tabs: [
                        Tab(
                          text: 'Productos',
                        ),
                        Tab(
                          text: 'Proveedores',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child:
                                          StreamBuilder<List<ProductsRecord>>(
                                        stream: queryProductsRecord(
                                          queryBuilder: (productsRecord) =>
                                              productsRecord.where('uid',
                                                  isEqualTo: currentUserUid),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 40,
                                                height: 40,
                                                child: SpinKitDoubleBounce(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 40,
                                                ),
                                              ),
                                            );
                                          }
                                          List<ProductsRecord>
                                              listViewProductsRecordList =
                                              snapshot.data;
                                          if (listViewProductsRecordList
                                              .isEmpty) {
                                            return Center(
                                              child: EmptyListWidget(
                                                item: 'Productos',
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewProductsRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewProductsRecord =
                                                  listViewProductsRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 12),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .scale,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        child:
                                                            ProductDetailWidget(
                                                          productDetails:
                                                              listViewProductsRecord
                                                                  .reference,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .darkBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 12, 12),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      listViewProductsRecord
                                                                          .image,
                                                                      'https://firebasestorage.googleapis.com/v0/b/quickorganizer-d6049.appspot.com/o/images%2Fimage_search.png?alt=media&token=a78996af-5082-4fba-a9bf-e0b596e1688c',
                                                                    ),
                                                                    width: 80,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.12,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          listViewProductsRecord
                                                                              .title,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .subtitle1
                                                                              .override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                color: FlutterFlowTheme.of(context).textColor,
                                                                              ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Text(
                                                                              formatNumber(
                                                                                listViewProductsRecord.price,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.commaDecimal,
                                                                                currency: '',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Text(
                                                                      listViewProductsRecord
                                                                          .description,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
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
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.96, 0.98),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: FlutterFlowIconButton(
                                    borderColor: Color(0x0057636C),
                                    borderRadius: 100,
                                    buttonSize: 60,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    icon: Icon(
                                      Icons.add_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      size: 40,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CreateProduct1Widget(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child:
                                          StreamBuilder<List<SuppliersRecord>>(
                                        stream: querySuppliersRecord(
                                          queryBuilder: (suppliersRecord) =>
                                              suppliersRecord.where('uid',
                                                  isEqualTo: currentUserUid),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 40,
                                                height: 40,
                                                child: SpinKitDoubleBounce(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 40,
                                                ),
                                              ),
                                            );
                                          }
                                          List<SuppliersRecord>
                                              listViewSuppliersRecordList =
                                              snapshot.data;
                                          if (listViewSuppliersRecordList
                                              .isEmpty) {
                                            return Center(
                                              child: EmptyListWidget(
                                                item: 'Proveedores',
                                              ),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewSuppliersRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewSuppliersRecord =
                                                  listViewSuppliersRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 12),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.9,
                                                            child:
                                                                EditSupplierWidget(
                                                              supplier:
                                                                  listViewSuppliersRecord,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 135,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .darkBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 12, 12),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  listViewSuppliersRecord
                                                                      .name,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2,
                                                                ),
                                                                Icon(
                                                                  Icons.edit,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .grayLight,
                                                                  size: 24,
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  listViewSuppliersRecord
                                                                      .description,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Email:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .background,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            4,
                                                                            0),
                                                                    child: Text(
                                                                      listViewSuppliersRecord
                                                                          .email,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Teléfono:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      listViewSuppliersRecord
                                                                          .telephone
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryColor,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Dirección:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      listViewSuppliersRecord
                                                                          .address,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText2,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
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
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.96, 0.98),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: FlutterFlowIconButton(
                                    borderColor: Color(0x0057636C),
                                    borderRadius: 100,
                                    buttonSize: 60,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    icon: Icon(
                                      Icons.add_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      size: 40,
                                    ),
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.9,
                                              child: CreateSupplierWidget(),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
