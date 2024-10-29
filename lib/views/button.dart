import 'package:flutter/material.dart';
import 'package:photo_gallery_with_biometric_authentication/provider/HideGalleryProvider.dart';
import 'package:photo_gallery_with_biometric_authentication/views/photo_gallery_home_page.dart';
import 'package:provider/provider.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 8,
          shadowColor: Colors.black,
          title: const Text(
            'Button',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Provider.of<HideGalleryProvider>(context,listen: false).aunthenticateUser();
            if(Provider.of<HideGalleryProvider>(context,listen: false).status)
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GalleryScreen()),);
              }

          }, child: const Text('Open Hide Gallery'),
        ),),
    );
  }
}
