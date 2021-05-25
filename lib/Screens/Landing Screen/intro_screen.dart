// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Components/default_button.dart';

import '../../landing_screen.dart';
import '../../responsive.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          key: key,
          height: Get.height - 70,
          width: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Responsive.isMobile(context)
                  ? Positioned(
                      bottom: 0,
                      right: -60,
                      child: Opacity(
                        opacity: .4,
                        child: Image.asset(
                          'assets/images/MY_IMAGE.png',
                          height: Get.height * 0.9,
                        ),
                      ),
                    )
                  : Container(),
              Center(
                child: Container(
                  height: Get.height * 0.4,
                  width: double.infinity,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [
                        const Color(0x00FFFFFF),
                        const Color(0xFF606085).withOpacity(0.67),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: Responsive.isMobile(context) ? 52 : 82,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, I’m',
                              style: TextStyle(
                                fontSize:
                                    Responsive.isMobile(context) ? 18 : 28,
                                color: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .color,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontSize:
                                      Responsive.isMobile(context) ? 20 : 40,
                                  color: const Color(0xff37ad6b),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'LAXMINARAYAN',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' DAS',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .color!,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: RatatedContainer(
                                      title: 'App Developer',
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' based in Bhubaneswar',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .color!,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  color: const Color(0xffa6b1bb),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Got a project? ',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .color!,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: GestureDetector(
                                      onTap: () {
                                        // Scrollable.ensureVisible(
                                        //     contactMeKey.currentContext,
                                        //     duration: Duration(seconds: 1));
                                      },
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: Text(
                                          'Let’s talk.',
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .color!,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 18),
                            DefaultButton(
                              text: 'DOWNLOAD RESUME',
                              press: () {
                                String url =
                                    'https://github.com/laxminarayan1998/portfolio_data/raw/main/Laxminarayan%20Resume.pdf';
                                html.AnchorElement anchorElement =
                                    new html.AnchorElement(href: url);
                                anchorElement.download = url;
                                anchorElement.click();
                              },
                            )
                          ],
                        ),
                      ),
                      (Responsive.isDesktop(context) ||
                              Responsive.isTablet(context))
                          ? Positioned(
                              bottom: 0,
                              right: 82,
                              child: Image.asset(
                                'assets/images/MY_IMAGE.png',
                                height: Get.height * 0.8,
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
