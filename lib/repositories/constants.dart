// Colors
// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils.dart';

const color_primary = Color(0xFFF3C76F);
const color_bg = Color(0xFF1D1D1D);
const color_bg_accent_darker = Color(0xFF252526);
const color_bg_accent = Color(0xFF2C2C2C);
const color_bg_accent_2 = Color(0xFF666666);
const color_text = Color(0xffEEECE8);
const color_text_secondary = Color(0xFF8B8B8B);
const color_text_button = Color(0xff000000);
const color_secondary_text = Color(0xffC4C4C4);
const color_error = Color(0xffCF6679);
const color_primary_secondary = Color(0xff625540);
const color_exp_bar_container = Color(0xC0554936);
const color_input_text_search = Color(0xff666666);
const color_reserv_wa = Color(0xff63A9BF);
const color_reserv_avail = Color(0xff74BF63);
const color_background_text_field = Color(0xff3D3D3D);
const color_disabled = Color(0xffABABAB);
const color_capsule_promo = Color(0xffCF6679);
const color_capsule_event = Color(0xff57B160);
const color_capsule_news = Color(0xFF878DC5);
const color_green = Color(0xff74BF63);
const color_card = Color(0xff464646);

// Dimens
const padding = 20.0;
const padding_s = 15.0;
const padding_xs = 10.0;
const padding_xxs = 5.0;

const border_radius_s = Radius.circular(5);
const border_radius_m = Radius.circular(10);
const border_radius_l = Radius.circular(15);
const border_radius_xl = Radius.circular(20);

const profile_pic_l = 100.0;
const profile_pic_m = 70.0;
const profile_pic = 50.0;
const profile_pic_s = 40.0;
const profile_pic_xs = 30.0;
const home_actions = 100.0;
const home_actions_s = 40.0;

const white_social_s = 30.0;
const white_social_m = 40.0;
const white_social_l = 50.0;

const size_floating_chest = 80.0;
const size_tab_height = 45.0;

const radius_s = 5.0;
const radius = 10.0;
const radius_m = 15.0;

const loader_small = 30.0;
const elevation = 5.0;
const button_height = 45.0;

// Exp related
const height_exp_bar = 7.0;
const height_exp_bar_container = 10.0;
const height_exp_bar_target = 18.0;
const icon = 25.0;

// Styles
const headline1 = TextStyle(fontSize: 34, color: color_text);
const headline2 = TextStyle(fontSize: 24, color: color_text);
const headline3 = TextStyle(fontSize: 18, color: color_text);
// const headline4 = TextStyle(fontSize: 14, color: color_text);
// const headline5 = TextStyle(fontSize: 12, color: color_text_secondary);
const bodyText1 = TextStyle(fontSize: 16, color: color_text);
const bodyText2 = TextStyle(fontSize: 14, color: color_text);
const subtitle1 = TextStyle(fontSize: 14, color: color_text);
const subtitle2 = TextStyle(fontSize: 12, color: color_text);
const button = TextStyle(fontSize: 13.6, color: color_text);

BoxShadow customBoxShadow = BoxShadow(
  color: color_bg.withOpacity(0.3),
  spreadRadius: 5,
  blurRadius: 7,
  offset: Offset(0, 4), // changes position of shadow
);

// image
const image_bg = 'assets/bg.png';
const image_logo = 'assets/hw_logo@3x.png';
const image_icon_clockin = 'assets/clockin_icon_image.png';

// Enum
enum ControllerState {
  firstLoad,
  loading,
  loadingSuccess,
  loadingFailed,
  reload,
}

const storage_token = 'storage_token';

const input_type_all = 0;
const input_type_string = 1;
const input_type_int = 2;

// extension DateParser on Response<dynamic> {
//   void msgError() {
//     try {
//       Map resp = json.decode(body);
//       Utils.popupFail(body: resp['message']);
//     } catch (e) {
//       Utils.popupFail(body: 'Failed to connect to server');
//     }
//   }
// }
