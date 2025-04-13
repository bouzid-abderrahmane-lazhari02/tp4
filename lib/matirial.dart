import 'package:flutter/material.dart';

class VisaCardPage extends StatefulWidget {
  const VisaCardPage({super.key});

  @override
  State<VisaCardPage> createState() => _VisaCardPageState();
}

class _VisaCardPageState extends State<VisaCardPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // خلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/image2.jpg'), // ضع صورة هنا
                fit: BoxFit.cover,
              ),
            ),
          ),

          // المحتوى
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 60),

                  // صورة الفيزا
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'image/image.png',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: _inputDecoration('Card Number'),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: _inputDecoration('Cardholder Name'),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: _inputDecoration('CVV/CVC'),
                          keyboardType: TextInputType.number,
                          obscureText: true,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          decoration: _inputDecoration('MM/YY'),
                          keyboardType: TextInputType.datetime,
                        ),
                        const SizedBox(height: 30),
                         CheckboxListTile(
                            title: const Text(
                              'أوافق',
                              style: TextStyle(color: Colors.white),
                            ),
                            value: isChecked,
                            activeColor: Colors.green, // لون المربع عند التحديد
                            checkColor: Colors.white, // لون علامة الصح
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      if (isChecked) {
                        // تنفيذ الدفع فقط إذا تم التحقق
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('يرجى الموافقة على الشروط أولاً')),
                        );
                      }
                    },
                    child: const Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
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
