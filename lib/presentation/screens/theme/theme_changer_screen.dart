import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const name = 'themechanger';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isDarkmode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toogleDarkMode();
            }, 
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined)
          ),
        ],
      ),
      body: const _ThemChangerView(),
    );
  }
}

class _ThemChangerView extends ConsumerWidget {
  const _ThemChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final color = colors[index];
          return RadioListTile(
            title: Text('Este Color', style: TextStyle(color: color)),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index, 
            groupValue: selectedColor, 
            onChanged: (value) {
              ref.read(selectedColorProvider.notifier).state = index;
            }
          );
      },
    );
  }
}