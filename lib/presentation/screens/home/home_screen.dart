import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';
import 'package:widgets_app/presentation/widgets/drawers/side_menu.dart';

class HomeScreen extends ConsumerWidget {

  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final scaffoldKey = GlobalKey<ScaffoldState>();
    final isDarkmode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toogleDarkMode();
            }, 
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined)
          ),
        ],
      ),
      
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();

  @override
  Widget build(BuildContext context) {
    appMenuItems;
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];
        return _ItemMenu(menuItem: menuItem,);
     },);
  }
}

class _ItemMenu extends StatelessWidget {

  final MenuItem menuItem;

  const _ItemMenu({ required this.menuItem});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      onTap: (){
        //Navigator.pushNamed(context, menuItem.url);
        //context.pushNamed(CardsScreen.name);
        context.push(menuItem.url);
      },
    );
  }
}