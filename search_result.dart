import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_studentsid_search/main.dart';

class SearchResult extends StatelessWidget {
  //DECLARATION THE PARAMETER
  final String id1_,
      student_id1_,
      student_name1_,
      gender1_,
      address1_,
      major1_,
      phone1_,
      tuition_fee2_,
      datetime_entry2_;

  const SearchResult({
    super.key,
    required this.id1_,
    required this.student_id1_,
    required this.student_name1_,
    required this.gender1_,
    required this.address1_,
    required this.major1_,
    required this.phone1_,
    required this.tuition_fee2_,
    required this.datetime_entry2_,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("DATA RESULT")),
        ),
        body: SearchMyResult(
          //SEND PARAMETER FROM STATELESSWIDGET TO STATEFULWIDGET
          id1a_: id1_,
          student_id1a_: student_id1_,
          student_name1a_: student_name1_,
          gender1a_: gender1_,
          address1a_: address1_,
          major1a_: major1_,
          phone1a_: phone1_,
          tuition_fee2a_: tuition_fee2_,
          datetime_entry2a_: datetime_entry2_,
        ),
      ),
    );
  }
}

class SearchMyResult extends StatefulWidget {
  //DECLRATION THE PARAMETER
  final String id1a_,
      student_id1a_,
      student_name1a_,
      gender1a_,
      address1a_,
      major1a_,
      phone1a_,
      tuition_fee2a_,
      datetime_entry2a_;

  const SearchMyResult({
    super.key,
    //REQUIRED THE PARAMETER
    required this.id1a_,
    required this.student_id1a_,
    required this.student_name1a_,
    required this.gender1a_,
    required this.address1a_,
    required this.major1a_,
    required this.phone1a_,
    required this.tuition_fee2a_,
    required this.datetime_entry2a_,
  });

  @override
  State<SearchMyResult> createState() => _SearchMyResultState();
}

class _SearchMyResultState extends State<SearchMyResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("1. Student_Id:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.student_id1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("2. Student_name:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.student_name1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("3. Gender:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.gender1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("4. Address:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.address1a_))),
              ),
            ],
          ),
          //.....................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("5. Major:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.major1a_))),
              ),
            ],
          ),
          //.....................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("6. Phone:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.phone1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange),
                        child: Text("7. Tuition_fee:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(widget.tuition_fee2a_.toString()))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange),
                        //child: Text("8. Datetime_entry:"))),
                        child: Text("8. Datetime_paid:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(widget.datetime_entry2a_.toString()))),
              ),
            ],
          ),
          //.....................................................................
          SizedBox(
            height: 60,
          ),

          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp(),
                ));
              },
              child: Text("SEARCH AGAIN"))
        ],
      ),
    );
  }
}
