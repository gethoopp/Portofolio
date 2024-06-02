import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:porto/bloc/data_bloc.dart';

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
                return const Center(child: CircularProgressIndicator());
              } else if (state is DatasSucces) {
                final data = state.datas;

                return Expanded(
                  child: CustomScrollView(
                    scrollDirection: Axis.vertical,
                    slivers: <Widget>[
                      SliverList(
                          delegate: SliverChildListDelegate([
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Text(data[1]!.name),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Text(data[2]!.name),
                            ),
                          ),
                        ),

                         Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Text(data[3]!.name),
                            ),
                          ),
                        ),

                          Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Text(data[4]!.name),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Text(data[5]!.name),
                            ),
                          ),
                        ),

                          Padding(
                          padding: EdgeInsets.only(top: size.height * 0.1),
                          child: SizedBox(
                            height: 80,
                            child: Card(
                              child: Text(data[6]!.name),
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
