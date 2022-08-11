import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsstranger/functions.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();
  final TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              "WhatsStranger",
              style: GoogleFonts.lato(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                maxLength: 10,
                controller: controller,
                validator: (value) => isPhone(value),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            OutlinedButton(
              onPressed: () async {
                if (_formkey.currentState!.validate()) {
                  await openWhatsapp(phone: controller!.text);
                }
              },
              child: Text(
                "open whatsapp",
                style: GoogleFonts.lato(fontSize: 16),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
