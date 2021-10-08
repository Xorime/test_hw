// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:holywings_attendance/screens/home.dart';
// import 'package:holywings_attendance/screens/login.dart';
// import 'package:holywings_attendance/utils/keys.dart';
// import '../widgets/confirm_dialog.dart';
// import '/utils/constants.dart';

// import 'constants.dart';

// class Utils {
//   static Widget getInitialHome() {
//     bool isLoggedIn = GetStorage().read(storageToken) != null ? true : false;
//     if (isLoggedIn) {
//       return Home();
//     } else {
//       return Login();
//     }
//   }

//   static logout() async {
//     await GetStorage().remove(storageToken);
//     Get.offAll(() => Login());
//   }

//   static setLoggedIn({required String token}) async {}

//   static popupSuccess({String title = 'Success', required String body}) {
//     Get.snackbar(
//       title,
//       body,
//       backgroundColor: Colors.green.withOpacity(0.7),
//       snackPosition: SnackPosition.BOTTOM,
//       margin:
//           const EdgeInsets.only(bottom: padding, left: padding, right: padding),
//     );
//   }

//   static popupFail({String title = 'Failed', required String body}) {
//     Get.snackbar(
//       title,
//       body,
//       backgroundColor: Colors.red.withOpacity(0.7),
//       snackPosition: SnackPosition.BOTTOM,
//       margin:
//           const EdgeInsets.only(bottom: padding, left: padding, right: padding),
//     );
//   }

//   static popup({required String title, required String body}) {
//     Get.snackbar(
//       title,
//       body,
//       backgroundColor: Colors.grey[800]!.withOpacity(0.5),
//       snackPosition: SnackPosition.BOTTOM,
//       margin:
//           const EdgeInsets.only(bottom: padding, left: padding, right: padding),
//     );
//   }

//   static errorDialog({
//     required String title,
//     required String desc,
//     required Function() onTapCancel,
//     required Function() onTapConfirm,
//     String? confirmText,
//     String? cancelText,
//   }) {
//     Get.defaultDialog(
//         barrierDismissible: false,
//         title: title,
//         content: Text(
//           desc,
//           style: bodyText1,
//         ),
//         contentPadding: const EdgeInsets.symmetric(horizontal: padding),
//         radius: padding_xs,
//         actions: [
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: padding_s),
//                 child: InkWell(
//                   onTap: onTapCancel,
//                   child: const Text('Cancel'),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: padding_s),
//                 child: InkWell(
//                   onTap: onTapConfirm,
//                   child: confirmText != null
//                       ? Text(confirmText)
//                       : const Text('Confirm'),
//                 ),
//               ),
//             ],
//           )
//         ]);
//   }

//   static confirmDialog({
//     required String title,
//     required String desc,
//     Function()? onTapDontShow,
//     required Function() onTapCancel,
//     required Function() onTapConfirm,
//     RxBool? dontShowMessage,
//   }) {
//     Get.dialog(
//       ConfirmDialog(
//         title: title,
//         desc: desc,
//         onTapCancel: onTapCancel,
//         onTapConfirm: onTapConfirm,
//         onTapDontShow: onTapDontShow,
//         dontShomMessage: dontShowMessage,
//       ),
//       barrierDismissible: false,
//     );
//   }

//   static String timeAgoSinceDate(int unixTimeStamp,
//       {bool numericDates = true, String suffix = ' ago'}) {
//     // DateTime notificationDate = DateFormat("dd-MM-yyyy h:mma").parse(dateString);

//     DateTime notificationDate =
//         DateTime.fromMillisecondsSinceEpoch(unixTimeStamp * 1000);
//     final date2 = DateTime.now();
//     final difference = date2.difference(notificationDate);

//     var days = difference.inDays.abs();

//     if ((days / 365).floor() >= 1) {
//       return (numericDates)
//           ? '${(days / 365).floor()} year$suffix'
//           : 'Last year';
//     }
//     if ((days / 30).floor() >= 1) {
//       return (numericDates)
//           ? '${(days / 30).floor()} month$suffix'
//           : 'Last month';
//     }
//     if ((days / 7).floor() >= 1) {
//       return (numericDates) ? '${(days / 7).floor()} week$suffix' : 'Last week';
//     }
//     if (days >= 2) {
//       return '$days days$suffix';
//     }
//     if (days >= 1) {
//       return (numericDates) ? '1 day$suffix' : 'Yesterday';
//     }
//     if (difference.inHours >= 2) {
//       return '${difference.inHours} hours$suffix';
//     }
//     if (difference.inHours >= 1) {
//       return (numericDates) ? '1 hour$suffix' : 'An hour$suffix';
//     }
//     if (difference.inMinutes >= 2) {
//       return '${difference.inMinutes} minutes$suffix';
//     }
//     if (difference.inMinutes >= 1) {
//       return (numericDates) ? '1 minute$suffix' : 'A minute$suffix';
//     }
//     if (difference.inSeconds >= 3) {
//       return '${difference.inSeconds} seconds$suffix';
//     }
//     {
//       return 'Just now';
//     }
//   }
// }
