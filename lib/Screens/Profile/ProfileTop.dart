import 'package:chatbot/Screens/Profile/ProfileInfo.dart';
import 'package:flutter/material.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    //final myController = TextEditingController();

    return Container(
      width: 343,
      height: 89,
      decoration: ShapeDecoration(
          color: Color(0xFF343A48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 44,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 60,
            child: IconButton(
                icon: ImageIcon(
                  AssetImage('Assets/Images/profile.jpg'),
                  size: 30,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                  // do something here
                }),
          ),
        ),
        SizedBox(
          width: 120,
        ),
      ]),
    );
  }
}

//     Future<String> getUserInfo() async {
//       // Retrieve user info from Firestore
//       String email = '';
//       await FirebaseFirestore.instance
//           .collection('users')
//           .get()
//           .then((QuerySnapshot querySnapshot) {
//         querySnapshot.docs.forEach((doc) {
//           email = doc['email'];
//         });
//       });

//       return email;
//     }
//   }
// }

