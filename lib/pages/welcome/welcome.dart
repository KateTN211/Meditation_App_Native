import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app_native/colors.dart';
import 'package:meditation_app_native/fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                //horizontal
                children: [
                  const GetStartedBackground(),
                  const FractionallySizedBox(
                    heightFactor: 0.35,
                    child: GetStartedHeader(),
                  ),
                  Align(
                    alignment: const Alignment(0.0, 0.8),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: WidgetStateProperty.all<Size?>(
                          Size(
                            size.width * 0.9,
                            size.height * 0.065,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'GET STARTED',
                        style: PrimaryFont.medium(size.height*0.02)
                            .copyWith(color: darkBlackColor),
                      ),
                    ),
                  ),
                ],
              )
            : const Row(
                // orientation
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: FractionallySizedBox(
                        heightFactor: 0.8,
                        child: GetStartedHeader(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: GetStartedBackground(),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class GetStartedBackground extends StatelessWidget {
  const GetStartedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: orientation == Orientation.portrait ? 0.6 : 0.9,
        widthFactor: 1,
        child: FittedBox(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.antiAlias,
          fit: BoxFit.cover,
          child: SvgPicture.asset(
            'assets/images/person_med.svg',
          ),
        ),
      ),
    );
  }
}

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: SvgPicture.asset(
            'assets/images/icon_logo.svg',
            alignment: const Alignment(0.0, -0.8), //đi theo tỉ lệ
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: FittedBox(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Hi Afsar, Welcome\n',
                style: PrimaryFont.bold(30).copyWith(
                  color: lightYellowColor,
                  height: 1.3,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'to Silent Moon',
                    style: PrimaryFont.medium(30).copyWith(
                      color: lightYellowColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox.expand(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text(
                    'Explore the app, Find some peace of mind to\n prepare for meditation',
                    style: PrimaryFont.light(16).copyWith(
                      color: lightGreyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
       Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox.expand(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all<Size?>(
                        Size(
                          size.width * 0.7,
                          size.height * 0.08,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'GET STARTED',
                      style: PrimaryFont.medium(size.height * 0.02)
                          .copyWith(color: darkBlackColor),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
