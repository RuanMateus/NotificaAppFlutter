import 'package:flutter/material.dart';

class OcurrenceCard extends StatelessWidget {
  const OcurrenceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: const Icon(
        Icons.pending_actions_outlined,
        size: 32,
      ),
      title: const Text(
        'Lâmpada queimada na sala 3',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      subtitle: const Text('Status: Pendente',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          )),
    );
  }
}
