import 'package:flutter/material.dart';
import 'package:my_profile_app/components/animated_counter.dart';
import 'package:my_profile_app/theme/responsive.dart';

import '../../../theme/constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    HighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: "K+",
                      ),
                      label: "Subscribers",
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: "K+",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: "K+",
                  ),
                  label: "Subscribers",
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  label: "Videos",
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: "K+",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
