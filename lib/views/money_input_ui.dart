// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyInputUI extends StatefulWidget {
  const MoneyInputUI({super.key});

  @override
  State<MoneyInputUI> createState() => _MoneyInputUIState();
}

class _MoneyInputUIState extends State<MoneyInputUI> {
  //ตัวแปรใช้กับ checkbox
  bool isTip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 174, 218),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'แชร์เงินกันเถอะ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 40.0,
            right: 40.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'assets/images/money.png',
                  width: MediaQuery.of(context).size.width * 0.35,
                ),
                SizedBox(
                  height: 35.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.moneyBillWave,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนเงิน (บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนคน (คน)',
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (paramValue) {
                        //จำๆๆๆ โค้ดใดที่มีผลต่อการแสดงผล
                        //ต้องเขียนอยู่ภายใต้ setState
                        setState(() {
                          isTip = paramValue!;
                        });
                      },
                      value: isTip,
                      activeColor: Colors.purple,
                      checkColor: Colors.white,
                      side: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      '  ทิปให้พนักงานเสิร์ฟ',
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                TextField(
                  enabled: isTip,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.coins,
                      color: Colors.purple,
                    ),
                    hintText: 'ป้อนจำนวนเงินทิป (บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'คำนวณ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  label: Text(
                    'ยกเลิก',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Created by May SAU',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
