import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notifica_app/assets/colors/colors.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppNotificaColors.blackApp,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => context.go('/'),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppNotificaColors.whiteApp,
                    )),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset('lib/assets/images/createAccount_image.png'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              child: const Text(
                'Crie sua conta aqui!',
                style: TextStyle(
                  color: AppNotificaColors.whiteApp,
                  fontSize: 18,
                ),
              ),
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        label: const Text('Email'),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 24),
                TextFormField(
                    decoration: InputDecoration(
                        label: const Text('Senha'),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 24),
                TextFormField(
                    decoration: InputDecoration(
                        label: const Text('Senha'),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)))),
                const SizedBox(height: 64),
                SizedBox(
                  width: double.maxFinite,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppNotificaColors.greenApp,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: const Text(
                      'Registrar',
                      style: TextStyle(
                        color: AppNotificaColors.blackApp,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
