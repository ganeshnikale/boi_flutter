import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BeneficiaryDetails extends StatelessWidget {
  BeneficiaryDetails({super.key, required this.BeneficiaryItem});

  final List<dynamic> BeneficiaryItem;

  @override
  Widget build(BuildContext context) {
    final beneItem = BeneficiaryItem[0];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Beneficiary Details'),
      ),
      body: Column(children: [
        Text(beneItem?.accountNumber),
        Text(beneItem?.nickName),
        Text(beneItem?.status)
      ]),
    );
  }
}
