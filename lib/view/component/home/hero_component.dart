import 'package:flutter/material.dart';
import 'package:gwala_test/utils/helpers.dart';
import 'package:gwala_test/view/component/text.dart';
import 'package:line_icons/line_icon.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HeroComponent extends StatelessWidget {
  const HeroComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Helpers.getWidthPageSize(context),
      height: Helpers.getHeightPageSize(context) / 2.3,
      decoration: const BoxDecoration(color: Color(0xff4777E7)),
      padding: EdgeInsets.fromLTRB(
        16,
        MediaQuery.of(context).padding.top + 16,
        16,
        16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            'Wellcome Irvan',
            color: Colors.white,
            fontSize: 24,
          ),
          const SizedBox(
            height: 42,
          ),
          Center(
            child: CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 7.3,
              reverse: true,
              percent: 0.8,
              animationDuration: 900,
              restartAnimation: true,
              animateFromLastPercent: true,
              animation: true,
              progressColor: const Color(0xff173B92),
              backgroundColor: Colors.white,
              center: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    'Next pay day',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const LineIcon.calendar(
                        color: Colors.white,
                        size: 14,
                      ),
                      CustomText(
                        '15 July',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomText(
                    '30000 DH',
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomText(
                    'Available Balance',
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
