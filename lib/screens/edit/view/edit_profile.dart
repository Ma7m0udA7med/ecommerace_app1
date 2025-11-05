import 'package:ecommerace_app1/screens/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: Color(0xFF156651),
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
              SizedBox(height: 15),

              ListTile(
                title: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    label: Text("Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              ListTile(
                title: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    label: Text("Phone"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                ),

                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  padding: WidgetStateProperty.all(EdgeInsets.all(40)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: const Text(' Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
