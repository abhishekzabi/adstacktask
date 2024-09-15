import 'package:flutter/material.dart';

class MobileCards extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitlefirst;
  final String subtitlesecond;
  final IconData? icon;
  final double radius;
  final double iconsize;

  const MobileCards({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitlefirst,
    required this.subtitlesecond,
    this.icon,
    required this.iconsize,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(imageUrl),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600, 
          color: Color.fromARGB(225, 255, 255, 255),
        ),
      ),
      subtitle: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: subtitlefirst,
              style: const TextStyle(
                fontSize: 12, 
                color: const Color.fromARGB(225, 255, 255, 255),
              ),
            ),
            TextSpan(
              text: subtitlesecond,
              style: const TextStyle(
                fontSize: 10, 
                color: const Color.fromARGB(225, 255, 255, 255),
                decoration:
                    TextDecoration.underline, 
              ),
            ),
          ],
        ),
      ),
      trailing: Icon(
        icon,
        size: iconsize,
        color: const Color.fromARGB(225, 255, 255, 255),
      ),
      onTap: () {
       
        print('ListTile tapped');
      },
    );
  }
}
