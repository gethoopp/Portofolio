import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:porto/bloc/data_bloc.dart';
import 'package:shimmer/shimmer.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          BlocBuilder<DataBloc, DataState>(
            builder: (context, state) {
              if (state is DataInitial) {
                return Expanded(child: CustomScrollView(
                  slivers: <Widget>[
                    SliverList(delegate: SliverChildListDelegate([
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey,
                            child: const SizedBox(
                              height: 80,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),

                         Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey,
                            child: const SizedBox(
                              height: 80,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),


                         Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey,
                            child: const SizedBox(
                              height: 80,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),


                         Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey,
                            child: const SizedBox(
                              height: 80,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),

                         Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey,
                            child: const SizedBox(
                              height: 80,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),

                         Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey,
                            child: const SizedBox(
                              height: 80,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),
                    ]))
                  ],
                ),);
              } else if (state is DatasSucces) {
                final data = state.datas;

                return Expanded(
                  child: CustomScrollView(
                    scrollDirection: Axis.vertical,
                    slivers: <Widget>[
                      SliverList(
                          delegate: SliverChildListDelegate([
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(data[1]!.name),
                                  ),
                                  subtitle: Text(data[1].email),
                                  trailing: Text(data[1].address.street),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(data[2]!.name),
                                  ),
                                  subtitle: Text(data[2].email),
                                  trailing: Text(data[2].address.street),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(data[3]!.name),
                                  ),
                                  subtitle: Text(data[3].email),
                                  trailing: Text(data[3].address.street),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(data[4]!.name),
                                  ),
                                  subtitle: Text(data[4].email),
                                  trailing: Text(data[4].address.street),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(data[5]!.name),
                                ),
                                subtitle: Text(data[5].email),
                                trailing: Text(data[5].address.street),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(data[6]!.name),
                                  ),
                                  subtitle: Text(data[6].email),
                                  trailing: Text(data[6].address.street),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]))
                    ],
                  ),
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
