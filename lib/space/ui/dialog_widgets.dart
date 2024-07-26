import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

void showOneButtonAlertDialog({
  required BuildContext context,
  String? titleText,
  EdgeInsetsGeometry? titlePadding,
  Widget? content,
}) {
  final alertDialog = AlertDialog(
    title: Text(titleText ?? ''),
    titlePadding: titlePadding,
    content: content,
    actions: [],
  );
  showDialog<String>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) => alertDialog,
  );
}

void showTwoButtonAlertDialog({
  required BuildContext context,
  String? titleText,
  required String alertText,
  required String positiveButtonText,
  required String negativeButtonText,
  VoidCallback? onPositivePressedCallback,
  VoidCallback? onNegativePressedCallback,
}) {
  showDialog<String>(
    barrierDismissible: false,
    // barrierColor: Colors.black.withOpacity(0.5),
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Center(
          child: Text(
            titleText ?? '',
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                color: NVColors.gray2E,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 16,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                alertText,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.notoSans(
                  textStyle: const TextStyle(
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: onNegativePressedCallback,
            style: TextButton.styleFrom(
              minimumSize: const Size(120, 30),
              backgroundColor: NVColors.gray93,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              negativeButtonText,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  color: NVColors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          TextButton(
            onPressed: onPositivePressedCallback,
            style: TextButton.styleFrom(
              minimumSize: const Size(120, 30),
              backgroundColor: NVColors.lightOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              positiveButtonText,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  color: NVColors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}

void showTwoButtonContentAlertDialog({
  required BuildContext context,
  required String positiveButtonText,
  required String negativeButtonText,
  required Color? positiveButtonColor,
  required Color? negativeButtonColor,
  Color? dialogBackgroundColor,
  String? titleText,
  Widget? content,
  VoidCallback? onPositivePressedCallback,
  VoidCallback? onNegativePressedCallback,
}) async {
  await showDialog<String>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        insetPadding: EdgeInsets.all(24),
        backgroundColor: dialogBackgroundColor ?? NVColors.white,
        title: Text(
          titleText ?? '',
          style: GoogleFonts.notoSans(
            textStyle: const TextStyle(
              color: NVColors.gray2E,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 15,
            ),
          ),
          textAlign: TextAlign.start,
        ),
        content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: content,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: onNegativePressedCallback,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    minimumSize: const Size(128, 30),
                    backgroundColor: negativeButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    negativeButtonText,
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        color: NVColors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                child: TextButton(
                  onPressed: onPositivePressedCallback,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    minimumSize: const Size(128, 30),
                    backgroundColor: positiveButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    positiveButtonText,
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        color: NVColors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

void dismissDialog(BuildContext context) {
  if (isCurrentDialogShowing(context)) {
    Navigator.pop(context);
  }
}

bool isCurrentDialogShowing(BuildContext context) =>
    ModalRoute.of(context)?.isCurrent != true;
