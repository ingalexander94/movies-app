import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (_, index) => _CastCard(),
        ),
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 180,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/no-image.jpg'),
                  height: 140,
                  width: 100,
                  image: NetworkImage('https://via.placeholder.com/150x300'))),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'actor.name hvyyfygy guhu dsds dsdsds d sdsds sdsd dsdsd dsdsd sds',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
