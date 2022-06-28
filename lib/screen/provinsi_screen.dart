// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:indonesia_covid_19/widget/provinsi_item.dart';
import 'package:provider/provider.dart';
import '../providers/data.dart';

class ProvinsiScreen extends StatelessWidget {
  const ProvinsiScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    Data dataCovid = Provider.of<Data>(context); 
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid App"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: dataCovid.fetchData(),
        builder: (context, snapshoot){
          if (snapshoot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 5/3 
                  ),
                itemCount: dataCovid.dataProvinsi.length,
                itemBuilder: (context, index){
                  final data = dataCovid.dataProvinsi[index];
                  return ProvinsiItem(
                    
                    dataProvinsi: data
                  );
                },
            ),
              );
          }
        }
      )
    );
  }
}