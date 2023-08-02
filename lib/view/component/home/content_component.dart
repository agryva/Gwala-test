

import 'package:flutter/material.dart';
import 'package:gwala_test/view/component/home/transaction_list_component.dart';
import 'package:gwala_test/view/component/text.dart';

class ContentComponent extends StatelessWidget {
  const ContentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Center(
            child: CustomText(
              'Latest transactions',
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 16),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return const TransactionListComponent();
            },
          )
        ],
      ),
    );
  }
}
