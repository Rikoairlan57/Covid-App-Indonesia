// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:indonesia_covid_19/models/data_covid.dart';
import 'package:indonesia_covid_19/screen/detail_provinsi.dart';

class ProvinsiItem extends StatelessWidget {
  ProvinsiItem({Key? key, required this.dataProvinsi}) : super(key: key);
  DataCovid dataProvinsi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => DetailProvinsi(provinsi: dataProvinsi,)
            )
          );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black26)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataProvinsi.key!, 
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "jumlah kasus : "
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              dataProvinsi.jumlahKasus.toString(), 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.red
                )
              )
          ],
        ),
      ),
    );
  }
}