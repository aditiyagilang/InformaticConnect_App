import 'package:flutter/material.dart';
import 'package:informaticconnect_app/pages/onboarding/splashscreen2.page.dart';

class Splashscreen1Page extends StatelessWidget {
  const Splashscreen1Page({super.key});

  void _navigateToNextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const Splashscreen2Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bgsplashscreen.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Thousands of\nmentor & experts to\nhelp your informatic!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () => _navigateToNextPage(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Warna latar belakang tombol
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0, // Tinggi tombol
                    horizontal: 180.0, // Lebar tombol
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Bentuk tombol
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 18.0, // Ukuran teks tombol
                    color: Colors.white, // Warna teks tombol
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
