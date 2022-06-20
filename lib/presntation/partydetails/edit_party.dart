import 'dart:io';
import 'dart:js';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:music_app/presntation/resources/color_manager.dart';
import 'package:music_app/userTextform/text_form_field.dart';

class EditParty extends StatefulWidget {
  EditParty({Key? key}) : super(key: key);

  @override
  State<EditParty> createState() => _EditPartyState();
}

class _EditPartyState extends State<EditParty> {
  File? pickedImage;
  void imagePickerOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Pic Image From",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          pickImage(ImageSource.camera, context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0XFF215388),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                  topRight: Radius.circular(60)),
                            )),
                        icon: const Icon(Icons.camera),
                        label: const Text("CAMERA"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          pickImage(ImageSource.gallery, context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0XFF215388),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                  topRight: Radius.circular(60)),
                            )),
                        icon: const Icon(Icons.image),
                        label: const Text(
                          "GALLERY",
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0XFF215388),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                  topRight: Radius.circular(60)),
                            )),
                        icon: const Icon(Icons.close),
                        label: const Text("CANCEL"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  pickImage(ImageSource imageType, BuildContext context) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Navigator.pop(context);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorManager.shadeBlue2),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Text(
                        "Edit Party",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TextformFields(hintText: 'Enter', icon: Icons.create_outlined),
          SizedBox(
            height: 10,
          ),
          TextformFields(hintText: 'Choose Date', icon: Icons.calendar_month),
          SizedBox(
            height: 10,
          ),
          TextformFields(hintText: 'Choose Time', icon: Icons.access_time),
          SizedBox(
            height: 10,
          ),
          TextformFields(
              hintText: 'Search Location', icon: Icons.add_location_outlined),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              color: ColorManager.background,
              child: TextField(
                maxLines: 3, //or null
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: 'Description',
                  hintStyle: TextStyle(color: ColorManager.white),
                ),
              ),
            ),
          ),
          DottedBorder(
            child: Container(
              child: Text(""),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Text(
                    'Update info',
                    style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  ),
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [ColorManager.gradient, ColorManager.purple],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
