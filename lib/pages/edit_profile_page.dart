import 'package:flutter/material.dart';
import 'package:toop/components/app_text_field.dart';
import 'package:toop/components/toolbar.dart';

class editProfilePage extends StatelessWidget {
  const editProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const toolBar(title: 'Edit Profile', actions: []),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
        
              //Edit Image Options
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: Image.network("https://picsum.photos/200",
                        width: 100, height: 100),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: const Icon(Icons.edit, size: 15)),
                    ),
                ],
              ),
              SizedBox(height: 20),
               appTextField(hint: 'Full Name'),
              const SizedBox(
                height: 16,
              ),
               appTextField(hint: 'Last Name'),
              const SizedBox(
                height: 16,
              ),
               appTextField(hint: 'Phone Number'),
              const SizedBox(
                height: 16,
              ),
               appTextField(hint: 'Workplace'),
              const SizedBox(
                height: 16,
              ),
               appTextField(hint: 'Location'),
              const SizedBox(
                height: 16,
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}
