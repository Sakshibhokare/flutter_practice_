import 'package:flutter/material.dart';

//widgets are immutable, there states can not be change once initiated hence need to mark variables as final
class AdditionalInformation extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditionalInformation(
      {super.key,
      required this.icon,
      required this.label,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Icon(icon),
          Text(
            label,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ) //everything that is not dynamic make it const 
        ],
      ),
    );
  }
}
