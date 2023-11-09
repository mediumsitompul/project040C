import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'search_notfound.dart';
import 'search_result.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("SEARCH DATA")),
        ),
        body: SearchData(),
      ),
    );
  }
}

class SearchData extends StatefulWidget {
  const SearchData({super.key});

  @override
  State<SearchData> createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  TextEditingController ctr_search = TextEditingController();
  //DECLARATION PARAMETER (Fields Record)
  var id1;
  var student_id1;
  var student_name1;
  var gender1;
  var address1;
  var major1;
  var phone1;
  var tuition_fee2;
  var datetime_entry2;


  //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  Future<void> _querySearchBank() async {
    final url2 =
        Uri.parse('http://192.168.100.240:8087/bank_tuitionfee/search2.php');
    var responseBank = await http.post(url2, body: {
      "search2": ctr_search.text,
    });
    var databank = jsonDecode(responseBank.body);

    tuition_fee2 = databank[0]['tuition_fee'];
    datetime_entry2 = databank[0]['datetime_entry'];
  }


  //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  Future<void> _querySearchUniv() async {
    final url1 =
        Uri.parse('https://mediumsitompul.com/crud_restapi/search1.php');
    var responseUniv = await http.post(url1, body: {
      "search1": ctr_search.text,
    });

    var datastudent = jsonDecode(responseUniv.body);

    print("datastudent =================================");
    print(datastudent);

    if (datastudent.isEmpty) {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchNotFound(),
            ));
      });
    } else {
      if (datastudent[0]['id'] != null) {
        id1 = datastudent[0]['id'];
        student_id1 = datastudent[0]['student_id'];
        student_name1 = datastudent[0]['student_name'];
        gender1 = datastudent[0]['gender'];
        address1 = datastudent[0]['address'];
        major1 = datastudent[0]['major'];
        phone1 = datastudent[0]['phone'];

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchResult(
                id1_: id1,
                student_id1_: student_id1,
                student_name1_: student_name1,
                gender1_: gender1,
                address1_: address1,
                major1_: major1,
                phone1_: phone1,
                tuition_fee2_: tuition_fee2,
                datetime_entry2_: datetime_entry2,


              ),
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: ctr_search,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 16,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: 'Please enter your Student_id',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _querySearchUniv();
                _querySearchBank();
              },
              child: Text("SEARCH DATA"))
        ],
      ),
    );
  }
}
