import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';
import '../theme/dark_mode.dart';
import '../theme/light_mode.dart';
import '../util/habit_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Center(
          child: CupertinoSwitch(
            value: Provider.of<ThemeProvider>(context).isDarkMode,
            onChanged:
                (value) =>
                    // toggle theme
                    Provider.of<ThemeProvider>(
                      context,
                      listen: false,
                    ).toggleTheme(),
          ),
        ),
      ),
      body: ListView(
        children: [
          HabitTile(title: 'Morning Workout'),
          HabitTile(title: 'Read 30 minutes'),
          HabitTile(title: 'Meditation'),
          HabitTile(title: 'Drink 2L of water'),
          HabitTile(title: 'Learn Flutter'),
        ],
      ),
    );
  }
}
