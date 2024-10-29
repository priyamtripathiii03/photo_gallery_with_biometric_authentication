import 'package:flutter/material.dart';
import 'package:photo_gallery_with_biometric_authentication/provider/HideGalleryProvider.dart';
import 'package:photo_gallery_with_biometric_authentication/views/button.dart';
import 'package:photo_gallery_with_biometric_authentication/views/photo_gallery_home_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HideGalleryProvider()),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const ButtonScreen(),
          '/hide': (context) => const GalleryScreen(),
        },
      ),
    );

  }
}
