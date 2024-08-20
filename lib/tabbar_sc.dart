import 'package:flutter/material.dart';

class TabBarSc extends StatelessWidget {
  const TabBarSc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'VECHILES',
              style: TextStyle(fontSize: 20),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.car_crash),
                  child: Text('Car'),
                ),
                Tab(
                  icon: Icon(Icons.bike_scooter),
                  child: Text('Bike'),
                ),
                Tab(
                  icon: Icon(Icons.car_crash),
                  child: Text('AC Car'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.blueGrey,
                child: Center(
                    child: Text(
                  'Car',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
              ),
              Container(
                color: Colors.purple,
                child: Center(
                    child: Text(
                  'Bike',
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                )),
              ),
              Container(
                color: Colors.amber,
                child: Center(
                    child: Text(
                  'AC Car',
                  style: TextStyle(fontSize: 30, color: Colors.green),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
