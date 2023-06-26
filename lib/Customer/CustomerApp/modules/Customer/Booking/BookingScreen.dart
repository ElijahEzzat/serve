import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import '../ChooseProvider/ChooseProviderScreen.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Booking extends StatefulWidget{
  const  Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  var selectedCity;
  var selectedProblem;
  var problemImage;
  var imageOfProblemText = 'Upload image of problem (optional)';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF99718),

          leading: IconButton(
            icon: const Icon(
                Icons.arrow_circle_left_sharp,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),

          title: const Text(
            'Booking Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          centerTitle: true,

          actions: [
            Container(

              padding: const EdgeInsets.only(
                  right: 10, left: 5, top: 5, bottom: 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/Logo.jpg')),

            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                 width: double.infinity,
                 height: 150,
                 decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Booking.jpg'),
                    fit: BoxFit.cover,
                  ),
                   borderRadius: BorderRadius.only(
                       bottomRight: Radius.circular(30.0) ,
                       bottomLeft: Radius.circular(30.0)),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 15.0, right: 15.0),
                child: Column(
                  children:
                  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Suitable Date',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        TextFormField(
                          onTap: (){
                            selectDate(context);
                          },
                          controller: dateController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                                Icons.date_range_outlined
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),

                            ),
                          ),

                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Suitable Time',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),
                        const SizedBox(height: 5.0),
                        TextFormField(
                          onTap: (){
                            selectTime(context);
                          },
                          controller: timeController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                                Icons.timer
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),

                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'District',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: DropdownButtonFormField(
                            icon: const Icon(
                              Icons.arrow_drop_down_circle,
                            ),

                            decoration:  InputDecoration(
                              prefixIcon: const Icon(Icons.location_city, ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),

                              ),
                            ),

                            items: [
                              'Shobra',
                              'El Marg',
                              'El Maadi',
                              'Madint Nasr',
                              'El Moski',
                              'Helwan',
                              'El Monib',
                              'El Haram',
                              'El Warak',
                              'El Mohandeseen',
                              'Bolak',
                              'El Doki',


                            ]
                                .map((e) => DropdownMenuItem(
                              child: Text('$e'),
                              value: e,
                            )).toList(),

                            onChanged: (val){
                              setState(() {
                                selectedCity = val!;
                              });
                            },

                            value: selectedCity,


                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Choose Problem',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: DropdownButtonFormField(
                            icon: const Icon(Icons.arrow_drop_down_circle, ),

                            decoration:  InputDecoration(

                              prefixIcon: const Icon(Icons.report_problem, ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),

                              ),

                            ),

                            items: [
                              'Fix Door,Window,...',
                              'Other',
                            ]
                                .map((e) => DropdownMenuItem(
                              child: Text('$e'),
                              value: e,
                            )).toList(),

                            onChanged: (val){
                              setState(() {
                                selectedProblem = val!;
                              });
                            },

                            value: selectedProblem,


                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 65.0,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(15.0) ,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 230.0,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  '$imageOfProblemText',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                )
                            ),

                            Container(
                              padding: EdgeInsets.all(2.0),
                              child: ElevatedButton(
                                style:
                                ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFF99718),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),

                                child:
                                Text(
                                  'Choose file',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),

                                onPressed:  () async {
                                  final result  = await FilePicker.platform.pickFiles();
                                  problemImage = result;


                                  if(result == null) return;

                                  //open file
                                  final file = result.files.first;
                                  openFile(file);

                                  setState(() {
                                    imageOfProblemText = file.name;
                                  });


                                  //save file permanently
                                  await saveFilePermanently(file);
                                },

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF99718),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      width: 150,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChooseProvider()),
                          );
                        },

                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 7.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Date Picker
  DateTime selectedDate = DateTime.now();
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.day,
        initialDate: selectedDate,
        firstDate: DateTime(1960, 1, 1),
        lastDate: DateTime(2200, 12, 31));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked  ;
        dateController.text = selectedDate.toString();
        FocusScope.of(context).requestFocus(FocusNode());
      });
    }
  }

  // Time Picker
  TimeOfDay selectedTime = TimeOfDay.now();
  selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {

        selectedTime = timeOfDay;
        timeController.text = selectedTime.toString();
        FocusScope.of(context).requestFocus(FocusNode());
      });
    }
  }

  void openFile(PlatformFile file){
    OpenFile.open(file.path!);
  }

  Future<File> saveFilePermanently(PlatformFile file) async{
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');

    return File(file.path!).copy(newFile.path);
  }
}



