import 'package:flutter/material.dart';
import 'package:spotfiy_clone/widgets/library_playlist.dart';
import 'package:spotfiy_clone/widgets/side_menu_main_buttons.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 200,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/spotify_logo_final.png',
                  height: 40,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
           SideMenuMainButtons(text: 'Home', icon: Icons.home, onTap:(){},),
           SideMenuMainButtons(text: 'Search', icon: Icons.search , onTap: (){},),
           SideMenuMainButtons(text: 'Radio', icon: Icons.radio , onTap: (){},),
          const SizedBox(height: 12,),
          const LibraryPlaylist(),
        ],
      ),
    );
  }
}
