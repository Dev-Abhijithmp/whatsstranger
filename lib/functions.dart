import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

String? isPhone(String? val) {
  if (val!.isEmpty) {
    return "Phonenumber is empty";
  }
  if (val.length != 10) {
    return "enter 10 digit number";
  }
  return null;
}

Future<void> openWhatsapp({
  required String phone,
}) async {
  Uri url = Uri.parse("https://wa.me/91$phone");
  print(url);
  await canLaunchUrl(url)
      ? await launchUrl(url,mode: LaunchMode.externalApplication)
      : await Fluttertoast.showToast(msg: "can't open whatsapp  now");
}
