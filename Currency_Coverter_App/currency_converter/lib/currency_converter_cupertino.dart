import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  // Logic
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    if (textEditingController.text.isNotEmpty) {
      result = double.parse(textEditingController.text) * 80;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white),
        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
      ),
      backgroundColor: CupertinoColors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Result Text
            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),

            const SizedBox(height: 20),

            // CupertinoTextField for input
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(
                
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                placeholder: 'Enter amount in USD',
                placeholderStyle: const TextStyle(
                  color: Color.fromARGB(255, 5, 1, 1),
                ),
                padding: const EdgeInsets.all(16),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: CupertinoColors.inactiveGray,
                    width: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // CupertinoButton for conversion
            CupertinoButton.filled(
              pressedOpacity: 0.4,
              onPressed: convert,
              child: const Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
