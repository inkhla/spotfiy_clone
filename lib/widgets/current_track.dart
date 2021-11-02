import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:spotfiy_clone/models/current_track.dart';

class CurrentTrackPlayer extends StatelessWidget {
  const CurrentTrackPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children:  [
            const TrackInfo(),
            const Spacer(),
            const PlayerControls(),
            const Spacer(),
            if(MediaQuery.of(context).size.width > 800)
            const Controls(),
          ],
        ),
      ),
    );
  }
}

class TrackInfo extends StatelessWidget {
  const TrackInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        Image.asset(
          'assets/images/lofigirl.jpg',
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selected.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              selected.artist,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.grey.shade300,
                    fontSize: 12,
                  ),
            ),
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shuffle),
              padding: const EdgeInsets.only(),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.skip_previous_outlined),
              padding: const EdgeInsets.only(),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outline),
              padding: const EdgeInsets.only(),
              iconSize: 35,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.skip_next_outlined),
              padding: const EdgeInsets.only(),
              iconSize: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.repeat),
              padding: const EdgeInsets.only(),
              iconSize: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '0:00',
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              selected?.duration ?? '0:00',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        )
      ],
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.devices_outlined),
          onPressed: () {},
          iconSize: 20,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up_outlined),
            ),
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.fullscreen_outlined),
        ),
      ],
    );
  }
}
