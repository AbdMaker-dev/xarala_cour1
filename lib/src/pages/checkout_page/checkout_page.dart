import 'package:flutter/material.dart';
import 'package:fayaalma_checkout/fayaalma_checkout.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FayaalmaCheckout(
          width: double.infinity,
          height: double.infinity,
          actifColor: Colors.green.shade600,
          inactifColor: Colors.amber,
          initCheckOutEntity: CheckOutEntity(
            appID: '6b4eae7d-caba-4a23-92f5-4d6269784837', //
            orderID: '2740',
            amount: 40.0,
            payerFullName: 'Alioune Badara DIOUF',
            productsOrdered: [
              ProductEntity(
                productName: "Sac En Cuire",
                unitPrice: 20.0,
                quantity: 1,
              ),
              ProductEntity(
                productName: "Iphone 15 Pro",
                unitPrice: 20.0,
                quantity: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
