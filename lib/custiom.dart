import 'package:flutter/material.dart';

class CustomFormPage extends StatelessWidget {
  const CustomFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // صورة الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/photo.jpg'), // ضع صورة هنا
                fit: BoxFit.cover,
              ),
            ),
          ),

          // المحتوى الشفاف
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Requests Cart',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      
                      TextField(
                        decoration: _inputDecoration('Cardholder Name'),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: _inputDecoration('Card Number'),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: _inputDecoration('Thr Food'),
                      ),
                      const SizedBox(height: 80),

                      TextField(
                        decoration: _inputDecoration('Your Request'),
                        
                      ),
                      const SizedBox(height: 40),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          // التعامل مع الإرسال
                        },
                        child: const Text(
                          'Da',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
  hintText: hint,
  hintStyle: TextStyle(color: Colors.white),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white), // لون الخط
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.orange, width: 2), // عند التركيز
  ),
);
  }
  

}
