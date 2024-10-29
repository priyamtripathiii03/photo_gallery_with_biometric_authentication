import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
class HideGalleryProvider extends ChangeNotifier
{
  bool status = false;
 Future<void> aunthenticateUser()
  async {
   LocalAuthentication auth = LocalAuthentication();
   bool canAuthenticate = await auth.canCheckBiometrics || await auth.isDeviceSupported();
   if(canAuthenticate)
     {
       status = await auth.authenticate(localizedReason: "To Open Photo Gallery, First verify it's you!", options: const AuthenticationOptions(biometricOnly: true));
       notifyListeners();
     }

  }


}