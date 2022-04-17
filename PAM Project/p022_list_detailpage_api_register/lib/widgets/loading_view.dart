import 'package:flutter/material.dart';
import 'package:loading_card/loading_card.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoadingCard(
          height: 50,
          width: size.width * .3,
          borderRadius: 30,
        ),
        const Padding(padding: const EdgeInsets.only(top: 20)),
        LoadingCard(
          height: size.height * .3,
          width: size.width - 40,
          borderRadius: 30,
        ),
        const Padding(padding: const EdgeInsets.only(top: 20)),
        LoadingCard(
          height: size.height * .3,
          width: size.width - 40,
          borderRadius: 30,
        ),
      ],
    );
  }
}
