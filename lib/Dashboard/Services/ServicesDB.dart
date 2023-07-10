import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';


class ServicesDBScreen extends StatefulWidget{
  @override
  State<ServicesDBScreen> createState() => _ServicesDBScreenState();
}

class _ServicesDBScreenState extends State<ServicesDBScreen> {
  final _formKey = GlobalKey<FormState>();

  var ServiceImage = 'Upload Image of service';
  var serviceImage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, i) {
          return
            Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 95,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF99718),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            CircleAvatar(
                              radius: 35.5,
                              backgroundColor: Color(0xFFF99718),
                              child: CircleAvatar(
                                radius: 33.0,
                                backgroundImage: AssetImage('assets/images/Services.png'),
                                //foregroundImage: _image == null ? null : FileImage(_image!),
                              ),
                            ),

                            SizedBox(
                              width: 10.0,
                            ),

                            Container(
                              padding: EdgeInsets.all(5.0),
                              width: 180.0,
                              child: Text(
                                'Service Name',
                                style: TextStyle(
                                  color: Color(0xFFF99718),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF85E2F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),

                              onPressed: (){

                                /*Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProviderHomeLayout()));*/
                              },

                              child: const Text(
                                'Delete',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Form(
                key: _formKey,
                child: AlertDialog(
                  title: Text('Add Service'),
                  content:
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Service Name',
                                labelStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(Icons.home_repair_service, color: Color(0xFFF99718),),

                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                ),

                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                ),

                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                ),

                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                ),

                              ),
                              //controller: nameController,
                              keyboardType: TextInputType.text,

                              onFieldSubmitted: (service){
                                print(service);
                              },

                              onChanged: (String service){
                                print(service);
                              },


                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Please Write Service Name';
                                }
                                if(value == ' '){
                                  return 'Please Write Service Name';
                                }
                                if(!RegExp("^[a-zA-Z]").hasMatch(value)){
                                  return 'Please enter valid Service Name';
                                }
                                return null;
                              },

                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(20.0) ,
                                border: Border.all(
                                  color: Color(0xFFF99718),
                                  width: 2.0,
                                ),
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 120.0,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        '$ServiceImage',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17.0,
                                        ),
                                      )
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(10.0),
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
                                        'Choose Image',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),

                                      onPressed:  () async {
                                        final result  = await FilePicker.platform.pickFiles();
                                        serviceImage = result;


                                        if(result == null) return;

                                        //open file
                                        final file = result.files.first;
                                        openFile(file);

                                        setState(() {
                                          ServiceImage = file.name;
                                        });


                                        //save file permanently
                                        await saveFilePermanently(file);
                                      },

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF99718),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),

                          child: Text(
                            'Send',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()){
                              Navigator.of(context).pop();
                            }
                          },
                        ),
                      ],

                    ),
                  ),
                ),
              );
            },
          );

          /*Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ProviderHomeLayout()));*/
        },

        backgroundColor: Color(0xFFF99718),
        child: Icon(
          Icons.add,
        ),
      ),

    );
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