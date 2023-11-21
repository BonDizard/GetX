import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //default the snack bar comes from top position
                    Get.snackbar('Snackbar title', 'snack bar message',
                        snackPosition: SnackPosition.BOTTOM,
                        //the below will over write the above title and message and another title will aperar
                        // titleText: Text(
                        //   'another title',
                        // ),
                        // messageText: Text(
                        //   'another message',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        colorText: Colors.red,
                        backgroundColor: Colors.black,
                        borderRadius: 30,
                        margin: const EdgeInsets.all(10),
                        maxWidth: 400,
                        animationDuration: const Duration(microseconds: 3000),
                        backgroundGradient: const LinearGradient(
                          colors: [Colors.orange, Colors.yellow],
                        ),
                        //while using the border color ensure you are using border width otherwise error
                        borderColor: Colors.purple,
                        borderWidth: 4,
                        boxShadows: [
                          const BoxShadow(
                            color: Colors.blue,
                            offset: Offset(30, 50),
                            spreadRadius: 20,
                          )
                        ],
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.bounceInOut,
                        // duration: Duration(microseconds: 8000),
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        //below is icon animation
                        shouldIconPulse: false,
                        leftBarIndicatorColor: Colors.white,
                        mainButton: TextButton(
                          onPressed: () {},
                          child: const Text('retry'),
                        ),
                        onTap: (val) {
                          if (kDebugMode) {
                            print('snack bar clicked');
                          }
                        },

                        //below is the blur of backgrond outside the snack bar
                        overlayBlur: 5,
                        overlayColor: Colors.purple.withOpacity(0.5),
                        //below is for inside the snack bar
                        padding: const EdgeInsets.all(5),
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.green,
                        progressIndicatorValueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.white),
                        reverseAnimationCurve: Curves.bounceInOut,
                        snackbarStatus: (val) {
                          if (kDebugMode) {
                            print(val);
                          }
                        });
                  },
                  child: const Text('show snack bar'))
            ],
          ),
        ),
      ),
    );
  }
}
