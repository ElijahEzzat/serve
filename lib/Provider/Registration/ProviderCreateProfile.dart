import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:serve_me/Provider/Registration/LogSuccess.dart';

class ProviderCreateProfile extends StatefulWidget {

  const ProviderCreateProfile({super.key});

  @override
  State<ProviderCreateProfile> createState() => _ProviderCreateProfile();
}

class _ProviderCreateProfile extends State<ProviderCreateProfile>{

  var selectedService;
  var idFrontSide = 'Upload Your ID Front side';
  var idBackSide = 'Upload Your ID Back side';

  String getService (){
    return selectedService;
  }

  File? _image ;
  Future getImage () async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(image == null)
      return ;

    final imageTemp = File(image.path);

    setState(() {
      this._image = imageTemp;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Create Your Profile',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.0,
              color: Color(0xFFF99718),
              child: Center(
                child: Stack(
                  children:
                  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Color(0xFFF99718),
                          backgroundImage: AssetImage('assets/images/provider.png'),
                          foregroundImage: _image == null ? null : FileImage(_image!),

                        ),

                      ],
                    ),


                    Positioned(
                      left: 240.0,
                      top: 110.0,
                      child: IconButton(
                        onPressed: (){
                          getImage();
                        },
                        icon: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Color(0xFFF99718),
                          ),
                        ),
                      ),
                    ),

                  ],

                ),
              ),
            ),

            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: DropdownButtonFormField(
                icon: Icon(Icons.arrow_drop_down_circle, color: Color(0xFFF99718),),

                decoration: const InputDecoration(
                  labelText: 'Service',
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.home_repair_service, color: Color(0xFFF99718),),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                    borderRadius:
                    BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                    borderRadius:
                    BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),

                ),

                items: ['Electricity','Cleaning','Carpenter','Painting']
                    .map((e) => DropdownMenuItem(
                  child: Text('$e'),
                  value: e,
                )).toList(),

                onChanged: (val){
                  setState(() {
                    selectedService = val!;
                  });
                },

                value: selectedService,
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(

                decoration: const InputDecoration(

                  labelText: 'Description of Service',
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.edit, color: Color(0xFFF99718),),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                    borderRadius:
                    BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                    borderRadius:
                    BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),

                ),
                //controller: emailController,
                keyboardType: TextInputType.text,
                onFieldSubmitted: (description){
                  print(description);
                },

              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
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
                      width: 200.0,
                      child: Text(
                        '$idFrontSide',
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
                            'Choose file',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),

                        onPressed:  () async {
                          final result  = await FilePicker.platform.pickFiles();


                          if(result == null) return;

                          //open file
                          final file = result.files.first;
                          openFile(file);

                          setState(() {
                            idFrontSide = file.name;
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

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
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
                        width: 200.0,
                        child: Text(
                          '$idBackSide',
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
                          'Choose file',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),

                        onPressed:  () async {
                          final result  = await FilePicker.platform.pickFiles();


                          if(result == null) return;

                          //open file
                          final file = result.files.first;
                          openFile(file);

                          setState(() {
                            idBackSide = file.name;
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

            SizedBox(
              height: 20.0,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF99718),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),

              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProviderLogSuccess()));
              },

              child: const Text(
                'SignUp',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
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
