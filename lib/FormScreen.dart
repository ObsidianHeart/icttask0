import 'package:flutter/material.dart';

import 'outputofthesum.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}
TextEditingController inputOne = TextEditingController();
TextEditingController inputTwo = TextEditingController();
String result = ""; // Added to store the calculated result
class _FormScreenState extends State<FormScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(controller: inputOne , keyboardType: TextInputType.number,),
            SizedBox(height: 30),
            TextFormField(controller: inputTwo, keyboardType: TextInputType.number),
            ElevatedButton(
              onPressed: () {
                // Calculate the sum
                double num1 = double.parse(inputOne.text);
                double num2 = double.parse(inputTwo.text);
                double sum = num1 + num2;

                // Navigate to the ResultScreen with the result
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(result: sum.toString()),
                  ),
                );
              },
              child: Text("Add"),
            ),
            SizedBox(height: 30),
            Text(result), // Display the calculated result
          ],
        ),
      ),
    );
  }
}
