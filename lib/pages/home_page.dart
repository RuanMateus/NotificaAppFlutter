import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notifica_app/assets/colors/colors.dart';
import 'package:notifica_app/pages/about_page.dart';
import 'package:notifica_app/pages/add_page.dart';
import 'package:notifica_app/pages/ocurrences_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppNotificaColors.blackApp,
      appBar: AppBar(
        title: const Text('Olá, Fulano!',
            style: TextStyle(
                color: AppNotificaColors.whiteApp,
                fontWeight: FontWeight.w600)),
        backgroundColor: AppNotificaColors.blackApp,
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.logout_outlined,
                color: AppNotificaColors.greenApp, size: 32),
          ),
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (_selectedIndex == 1) {
          return const AddPage();
        }
        if (_selectedIndex == 2) {
          return const AboutPage();
        }
        return const OcurrencesPage();
      }),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, size: 32),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline_outlined, size: 32),
            label: 'Adicionar',
          ),
          NavigationDestination(
            icon: Icon(Icons.announcement_outlined, size: 32),
            label: 'Sobre',
          ),
        ],
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) => setState(() {
          _selectedIndex = index;
        }),
      ),
    );
  }
}
