import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/my_button_appbar.dart';
import '../../widgets/my_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  var optionYear = ['1st year', '2nd year', '3rd year', '4th year'];
  var currentYearSelected = '1st year';
  var year = '1st year';

  var optionDegree = ['BSIS', 'BSAIS', 'BSA', 'BSE', 'BSTM'];
  var currentDegreeSelected = 'BSIS';
  var degree = 'BSIS';

  var optionBlock = ['Block 1', 'Block 2', 'Block 3', 'Block 4'];
  var currentBlockSelected = 'Block 1';
  var block = 'Block 1';

  DateTime currentdate = DateTime.now();
  var starthour = TimeOfDay.now();
  var endhour = TimeOfDay.now();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Full Name',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  icon: Icons.person,
                  hint: 'Juan Dela Cruz',
                  validator: (value) {
                    return value!.isEmpty ? "Please enter your name" : null;
                  },
                  textEditingController: fullnameController,
                  showicon: false,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Course',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    DropdownButton<String>(
                      items: optionDegree.map((String dropDownStringCourse) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringCourse,
                          child: Text(
                            dropDownStringCourse,
                          ),
                        );
                      }).toList(),
                      onChanged: (newValueSelected) {
                        setState(() {
                          currentDegreeSelected = newValueSelected!;
                          degree = newValueSelected;
                        });
                      },
                      value: currentDegreeSelected,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Year',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    DropdownButton<String>(
                      items: optionYear.map((String dropDownStringBlock) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringBlock,
                          child: Text(
                            dropDownStringBlock,
                          ),
                        );
                      }).toList(),
                      onChanged: (newValueSelected) {
                        setState(() {
                          currentYearSelected = newValueSelected!;
                          year = newValueSelected;
                        });
                      },
                      value: currentYearSelected,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Block',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    DropdownButton<String>(
                      items: optionBlock.map((String dropDownStringBlock) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringBlock,
                          child: Text(
                            dropDownStringBlock,
                          ),
                        );
                      }).toList(),
                      onChanged: (newValueSelected) {
                        setState(() {
                          currentBlockSelected = newValueSelected!;
                          block = newValueSelected;
                        });
                      },
                      value: currentBlockSelected,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Subject',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  icon: Icons.person,
                  hint: 'Programming 2',
                  validator: (value) {
                    return value!.isEmpty ? "Please enter your name" : null;
                  },
                  textEditingController: subjectController,
                  showicon: false,
                ),
                SizedBox(height: 10),
                Text(
                  'Date',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                MyTextField(
                  showicon: false,
                  icon: Icons.calendar_today,
                  hint: DateFormat('dd/MM/yyyy').format(currentdate),
                  readonly: true,
                  validator: (value) {
                    return null;
                  },
                  textEditingController: TextEditingController(),
                  ontap: () {
                    _showdatepicker();
                  },
                ),
                SizedBox(height: 20),
                CustomButton(
                  color: Colors.green,
                  width: 450,
                  title: 'Submit',
                  func: () {},
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }

  _showdatepicker() async {
    var selecteddate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2299),
            currentDate: DateTime.now())
        .then((value) {
      setState(() {
        currentdate = value!;
      });
    });
  }
}
