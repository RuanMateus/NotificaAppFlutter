import 'package:flutter/material.dart';
import 'package:notifica_app/assets/colors/colors.dart';
import 'package:notifica_app/widgets/ocurrences_card.dart';

class OcurrencesPage extends StatefulWidget {
  const OcurrencesPage({super.key});

  @override
  State<OcurrencesPage> createState() => _OcurrencesPageState();
}

class _OcurrencesPageState extends State<OcurrencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppNotificaColors.blackApp,
        body: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            top: 32,
            right: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('lib/assets/images/logo.png'),
              const SizedBox(height: 32),
              const Text(
                'Lista de ocorrências',
                style: TextStyle(
                  color: AppNotificaColors.whiteApp,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Card(
                      margin: EdgeInsets.only(top: 10),
                      child: OcurrenceCard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
