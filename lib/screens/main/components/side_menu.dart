import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_profile_app/models/user.dart';
import 'package:my_profile_app/theme/constants.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: 'Residence',
                      text: const User().residence,
                    ),
                    AreaInfoText(
                      title: 'City',
                      text: const User().city,
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
                        ),
                      ),
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'DOWNLOAD CV',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset('assets/icons/download.svg')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                        children: <Widget>[
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),
                          const SizedBox(width: 8.0),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),
                          const SizedBox(width: 8.0),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          const Spacer(),
                        ],
                      ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
