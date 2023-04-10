// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var client = http.Client();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Center(child: Text("Medical Consultation App")),
      ),
      body: Column(
        children: [
          Container(
            height: 180,
            child: Center(
              child: CircleAvatar(
                  radius: 60, backgroundImage: AssetImage("assets/cca2.png")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Consultation()
        ],
      ),
    );
  }
}

class Consultation extends StatelessWidget {
  const Consultation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Name:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Moris Onyango',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Address:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'London, Nile Street',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Phone No:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+2545678987656',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text("Therapy Treatment "),
              subtitle: Text("12/3/2021"),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            ),
            ListTile(
              title: Text("Camo Appointment"),
              subtitle: Text("10/6/2020"),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            ),
            ListTile(
              title: Text(" Consultation"),
              subtitle: Text("1/10/2020"),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            ),
            ListTile(
              title: Text("Appointment"),
              subtitle: Text("05/1/2019"),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
