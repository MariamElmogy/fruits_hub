import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/styles.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.visible,
  });

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: visible,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'تخط',
                    style: Styles.regular13.copyWith(color: Color(0xFF949D9E)),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Styles.semiBold13.copyWith(color: Color(0xFF4E5456)),
          ),
        ),
      ],
    );
  }
}
