import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:presence_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void login() async {
    if (emailC.text.isNotEmpty && passwordC.text.isNotEmpty) {
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: emailC.text, password: passwordC.text);

        if (userCredential.user != null) {
          if (userCredential.user!.emailVerified == true) {
            Get.offAllNamed(Routes.HOME);
          } else {
            Get.defaultDialog(
                title: "Email not verified yet",
                middleText: "Please verified your email address");
          }
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar("an Error occured", "No user found for that email.");
        } else if (e.code == 'wrong-password') {
          Get.snackbar(
              "an Error occured", "Wrong password provided for that user.");
        }
      } catch (e) {
        Get.snackbar("an Error occured", "an Unknown error occured");
      }
    } else {
      Get.snackbar("an Error occured", "Please fill the Field");
    }
  }
}
