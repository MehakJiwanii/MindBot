import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileImagePickerScreen extends StatefulWidget {
  const ProfileImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ProfileImagePickerScreen> createState() =>
      _ProfileImagePickerScreenState();
}

class _ProfileImagePickerScreenState extends State<ProfileImagePickerScreen> {
  File? pickedImage;
  String? savedImagePath;

  @override
  void initState() {
    super.initState();
    // Load saved image path from SharedPreferences
    loadSavedImagePath();
  }

  Future<void> loadSavedImagePath() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      savedImagePath = prefs.getString('profileImagePath');
    });
  }

  void _showBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.green.shade50
                    : Colors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Pick Image From",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Color(0xFF343A48)
                            : Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color(0xFF343A48)
                                    : Colors.white60,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Button border radius
                            ),
                          ),
                          onPressed: () {
                            pickImageFun(ImageSource.camera);
                          },
                          icon: const Icon(Icons.camera),
                          label: const Text("CAMERA"),
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color(0xFF343A48)
                                    : Colors.white60,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Button border radius
                            ),
                          ),
                          onPressed: () {
                            pickImageFun(ImageSource.gallery);
                          },
                          icon: const Icon(Icons.image),
                          label: const Text("GALLERY"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> pickImageFun(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) {
        Navigator.pop(context);
        return;
      }
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      // Save the picked image path to SharedPreferences
      saveImagePathToSharedPreferences(tempImage.path);

      Get.back();
      Navigator.pop(context);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<void> saveImagePathToSharedPreferences(String imagePath) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('profileImagePath', imagePath);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: pickedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: Image.file(
                          pickedImage!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      )
                    : savedImagePath != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: Image.file(
                              File(savedImagePath!),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: Image.asset(
                              "Assets/Images/profile.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
              ),
              Positioned(
                top: -5,
                right: -10,
                child: InkWell(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: Image.asset(
                    "Assets/Images/plusicon.png",
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
