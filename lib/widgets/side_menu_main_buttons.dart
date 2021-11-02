import 'package:flutter/material.dart';

class SideMenuMainButtons extends StatelessWidget {

  final String text;
  final IconData icon;
  late Function()? onTap;
   SideMenuMainButtons({Key? key, required this.text, required this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
        size: 18,
      ),
      minLeadingWidth: 10,
      onTap: onTap,
    );
  }
}
