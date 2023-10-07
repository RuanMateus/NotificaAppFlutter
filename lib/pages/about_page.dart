import 'package:flutter/material.dart';
import 'package:notifica_app/assets/colors/colors.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
              'Objetivo do App:',
              style: TextStyle(
                color: AppNotificaColors.whiteApp,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Aplicativo desenvolvido em Flutter no curso do IFB, com intuito de permitir que as ocorrências sejam registradas e acompanhadas.',
              style: TextStyle(
                color: AppNotificaColors.whiteApp,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Desenvolvedor:',
              style: TextStyle(
                color: AppNotificaColors.whiteApp,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 16,
                ),
                Text('R2',
                    style: TextStyle(
                        color: AppNotificaColors.whiteApp, fontSize: 18))
              ],
            )
          ],
        ),
      ),
    );
  }
}
