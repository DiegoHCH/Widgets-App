

import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String url;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.url, 
    required this.icon
  });
}

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Riverpod', 
    subTitle: 'Counter + Riverpod Manejador de Estados', 
    url: '/riverpod', 
    icon: Icons.onetwothree_rounded
  ),
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios Botones en Flutter', 
    url: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un Contenedor Estilizado', 
    url: '/cards', 
    icon: Icons.credit_card_outlined
  ),
  MenuItem(
    title: 'Indicadores de Progreso', 
    subTitle: 'Generales y Controlados', 
    url: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'SnackBars y Dialogos', 
    subTitle: 'Indicadores en Pantalla', 
    url: '/snackbars', 
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated Container', 
    subTitle: 'Statefull Widget Animado', 
    url: '/animated', 
    icon: Icons.check_box_outline_blank_rounded
  ),
  MenuItem(
    title: 'UI Controls', 
    subTitle: 'Serie de Controles de Flutter', 
    url: '/ui_control', 
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'Introduccion a la Aplicacion', 
    subTitle: 'Tutorial Introductorio', 
    url: '/tutorial', 
    icon: Icons.accessibility_rounded
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull', 
    subTitle: 'Listas Infinitas y Pull to Refresh', 
    url: '/infinite', 
    icon: Icons.list_alt_rounded
  ),


];