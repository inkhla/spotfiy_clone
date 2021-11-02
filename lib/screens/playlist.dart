import 'package:flutter/material.dart';
import 'package:spotfiy_clone/data/data.dart';
import 'package:spotfiy_clone/widgets/playlist_header.dart';
import 'package:spotfiy_clone/widgets/tracks_list.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;

  const PlaylistScreen({Key? key, required this.playlist}) : super(key: key);

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 140,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.chevron_left,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
                primary: Theme.of(context).iconTheme.color),
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: const Text('Khaled Elnkhla'),
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            padding: const EdgeInsets.only(),
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_down),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFAF1018),
              Theme.of(context).backgroundColor
            ],
            stops: const [0, 0.3],
          ),
        ),
        child: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
            controller: _scrollController ,
            children: [
              PlaylistHeader(playlist : widget.playlist),
              TracksList(tracks : widget.playlist.songs),
            ],
          ),
        ),
      ),
    );
  }
}
