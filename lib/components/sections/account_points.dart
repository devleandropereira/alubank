import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text('Pontos da conta', style: Theme.of(context).textTheme.titleMedium,),
          ),
          BoxCard(boxContent: _AccountPointsContent())
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pontos totais:'),
                Text('3000', style: Theme.of(context).textTheme.bodyLarge)
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Text('Objetivos:', style: Theme.of(context).textTheme.titleMedium,),
        Row(
          children: [
            ColorDot(color: ThemeColors.accountPoints['freeDelivery']),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Entrega grátis: 15000pts'),
            )
          ]
        ),
        Row(
            children: [
              ColorDot(color: ThemeColors.accountPoints['streaming']),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('1 mês de streaming: 30000pts'),
              )
            ]
        )
      ],
    );
  }
}
