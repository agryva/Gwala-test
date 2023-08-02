

import 'package:flutter/material.dart';
import 'package:gwala_test/utils/helpers.dart';
import 'package:gwala_test/view/component/text.dart';
import 'package:line_icons/line_icon.dart';

class TransactionListComponent extends StatelessWidget {
  const TransactionListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Helpers.getWidthPageSize(context),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration:  BoxDecoration(
        color: const Color(0xffEEF1F8),
        borderRadius: BorderRadius.circular(16)
      ),
      child:  Row(
        children: [
          const LineIcon.lineChart(),
          const SizedBox(width: 8,),
          Expanded(
            child: CustomText(
              '400.00',
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                'Sent',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                'July 03, 2023',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ],
          )
        ],
      ),
    );
  }
}
