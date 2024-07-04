import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fee',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff006769),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff006769).withOpacity(0.9),
              Color(0xFFA4EAFE).withOpacity(0.9),
              Color(0xffa4c7c7).withOpacity(0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeeDetailRow(
                label: "Total Fee:",
                value: "50,000",
              ),
              SizedBox(height: 20),
              FeeDetailRow(
                label: "Due Date:",
                value: "30th July 2024",
              ),
              SizedBox(height: 20),
              FeeDetailRow(
                label: "Status:",
                value: "Unpaid",
                valueColor: Colors.red,
              ),
              SizedBox(height: 20),
              Text(
                "Pay using:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Colors.white),
              ),
              SizedBox(height: 20),
              PaymentButton(
                label: "JazzCash",
                onPressed: () {
                  // Implement JazzCash payment functionality here
                },
              ),
              SizedBox(height: 20),
              PaymentButton(
                label: "EasyPaisa",
                onPressed: () {
                  // Implement EasyPaisa payment functionality here
                },
              ),
              SizedBox(height: 20),
              PaymentButton(
                label: "Bank Account",
                onPressed: () {
                  // Implement Bank Account payment functionality here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeeDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;

  FeeDetailRow({required this.label, required this.value, this.valueColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Colors.white),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: valueColor),
        ),
      ],
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  PaymentButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor:Color(0xff006769),
        backgroundColor:Colors.white, // Button color
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        textStyle: TextStyle(fontSize: 20),
      ),
      child: Text(label),
    );
  }
}

