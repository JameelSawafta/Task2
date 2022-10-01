import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test3/repository/dataLocal.dart';
import '../repository/dataAPI.dart';
import '../viewModels/homeViewModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List dataAll = [];
  var data = HomeViewModel(dataRepository: DataLocal());
  @override
  void initState() {
    dataAll = data.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.title),
        ),
        body: ListView.builder(
          itemCount: dataAll.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(dataAll[index].urlToImage),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(dataAll[index].author),
                        SizedBox(width: 10,),
                        Text(dataAll[index].publishedAt),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(dataAll[index].description),
                    SizedBox(height: 10,),
                    Text(dataAll[index].title),
                    SizedBox(height: 30,),
                  ],
                ),
              );
            },
        )
    );
  }
}

