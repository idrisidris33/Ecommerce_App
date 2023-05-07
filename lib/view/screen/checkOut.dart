import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/checkoutController.dart';

enum PaymentMathode { card, cash, z, e, r }

enum Mathode { card, cash, z, e, r }

class CheckOut extends StatefulWidget {
  CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  PaymentMathode? paymentMathode;
  Mathode? mathode;

  @override
  Widget build(BuildContext context) {
    CheckOutController checkOutController = Get.put(CheckOutController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('CHECKOUT'),
            checkOutController.coupon == null
                ? const Text("/")
                : Text(checkOutController.coupon),
            Text(checkOutController.price),
            Radio(
                value: PaymentMathode.card,
                groupValue: paymentMathode,
                onChanged: (value) {
                  setState(() {
                    paymentMathode = value!;
                  });
                }),
            Radio(
                value: Mathode.r,
                groupValue: mathode,
                onChanged: (value) {
                  setState(() {
                    mathode = value!;
                  });
                }),
            Radio(
                value: PaymentMathode.e,
                groupValue: paymentMathode,
                onChanged: (value) {
                  setState(() {
                    paymentMathode = value!;
                  });
                }),
            Radio(
                value: PaymentMathode.z,
                groupValue: paymentMathode,
                onChanged: (value) {
                  setState(() {
                    paymentMathode = value!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
