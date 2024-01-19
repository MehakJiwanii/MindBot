import 'package:chatbot/Screens/LoginPage.dart';
import 'package:chatbot/Screens/NavBar.dart';
import 'package:chatbot/Screens/Profile/ProfileImagePicker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  var newPassword = "";
  var editEmail = "";
  var nameValue = "";
  bool passToggle = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();

  void signOutUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.signOut();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    getValue();
    super.initState();
  }

  void changePassword() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    try {
      await currentUser!
          .updatePassword(newPasswordController.text)
          .then((value) {
        {
          Fluttertoast.showToast(
            msg: "Password Changed,Please Login",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
          );
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        }
      });
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.code,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      );
    }
  }

  void changeEmail() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    try {
      await currentUser!.updateEmail(emailController.text).then((value) {
        {
          Fluttertoast.showToast(
            msg: "Email Changed,Please Login",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Color(0xFF343A48),
            textColor: Colors.white,
          );
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        }
      });
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.code,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      );
    }
  }

  // _launchURL() async {
  //   var url = Uri.parse("https://hypeteq.com/");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString('myName');
    setState(() {
      nameValue = getName ?? "";
    });
  }

  //int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.green.shade50
          : Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Color(0xFF343A48)
                        : Colors.black45,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NavBar(displayName: '', email: ''),
                                      ));
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                  size: 20,
                                )),
                            const Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const ProfileImagePickerScreen(),
                  const SizedBox(height: 5),
                  Text(nameValue.capitalizeFirst.toString(),
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                ],
              )
            ]),
            const SizedBox(height: 20),
            Column(
              children: [
                InkWell(
                    onTap: () {
                      editUsernameDialog();
                    },
                    child: drawerText(
                        "Change Username", Icons.lock_open_outlined)),
                InkWell(
                    onTap: () {
                      editPasswordDialog();
                    },
                    child: drawerText(
                        "Change Password", Icons.change_circle_outlined)),
                InkWell(
                    onTap: () {
                      infoDialogBox();
                    },
                    child: drawerText(
                        "Information", Icons.perm_device_information)),
                InkWell(
                    onTap: () => signOutUser(),
                    child: drawerText("Sign Out", Icons.logout_rounded)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget drawerText(String name, IconData icons) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        color: Colors.grey.withOpacity(0.2),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20), //<-- SEE HERE
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  child: Icon(
                    icons,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Color(0xFF343A48)
                        : Colors.white60,
                  ),
                )
              ]),
            ),
            Text(
              name,
              // style: const TextStyle(fontWeight: FontWeight.w500),
              style: GoogleFonts.workSans(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }

  infoDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? Colors.green.shade50
                : Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("Infomation",
                style: GoogleFonts.muktaMahee(
                  textStyle: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Color(0xFF343A48)
                          : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            content: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    ClipOval(
                        child: Image.asset(
                      "Assets/Images/MindBot.png",
                      height: 60,
                      width: 70,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Text("MINDBOT",
                            style: GoogleFonts.mukta(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Color(0xFF343A48)
                                  : Colors.white,
                            ))))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(children: [
                          Text(
                            "MindBot is an innovative mental\nhealth chatbot designed to provide\nsupport and assistance for individual\nfacing mental health challenges.\nBy leveraging advanced natural language\nprocessing,\nMindBot offers a compassionate\nand empathetic virtual companion,\nfostering a safe space for users to\nexpress their thoughts and receive helpful\nguidance. With its user-friendly interface,\nMindBot aims to contribute to mental\nwell-being by facilitating open \nconversations and delivering personalized\nresources.",
                            style: TextStyle(
                                color: Color(0xFF343A48),
                                //decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                        ])
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  editUsernameDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Text("Edit Username",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF343A48),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                )),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                  cursorColor: Color(0xFF343A48),
                  decoration: InputDecoration(
                    hintText: "Enter new username",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
            actions: [
              MaterialButton(
                child: const Text('Update Username'),
                onPressed: () {
                  // Save the updated username to SharedPreferences
                  var prefs = SharedPreferences.getInstance();
                  prefs.then((prefs) {
                    prefs.setString('myName', nameController.text);
                    getValue(); // Update the displayed username
                  });

                  Navigator.pop(context); // Close the dialog
                },
              ),
            ],
          );
        });
  }

  editPasswordDialog() {
    newPassword = newPasswordController.text;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Text("Change Password",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  )),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: newPasswordController,
                    obscureText: passToggle,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter Password";
                      } else if (value.length < 6) {
                        return "Please enter at least 6 digit";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Change Password",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(
                            passToggle
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.green
                                    : Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              actions: [
                MaterialButton(
                  child: const Text('Change Password'),
                  onPressed: () {
                    changePassword();
                  },
                ),
              ],
            );
          });
        });
  }
}
