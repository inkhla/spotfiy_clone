import 'package:flutter/material.dart';
import 'package:spotfiy_clone/data/data.dart';
import 'package:spotfiy_clone/screens/playlist.dart';
import 'package:spotfiy_clone/widgets/current_track.dart';
import 'package:spotfiy_clone/widgets/side_menu.dart';

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children:  [
                if(MediaQuery.of(context).size.width > 700)
                const SideMenu(),
                const Expanded(
                    child: PlaylistScreen(
                  playlist: lofiHiphopPlaylist,
                )),
              ],
            ),
          ),
          const CurrentTrackPlayer(),
        ],
      ),
    );
  }
}
