import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/router/route_constants.dart';
import 'package:find_space/space/ui/colors.dart';
import 'package:find_space/space/ui/dialog_widgets.dart';
import 'package:find_space/space/ui/space_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

class SpacesPage1 extends StatefulWidget {
  const SpacesPage1({super.key});

  @override
  State<SpacesPage1> createState() => _SpacesPage1State();
}

class _SpacesPage1State extends State<SpacesPage1> {
  final groupNameEditController = TextEditingController();
  final dramaNameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Provider<SpaceListViewModel>(
      create: (_) => SpaceListViewModel(),
      dispose: (_, vm) => vm.close(),
      child: Consumer<SpaceListViewModel>(
        builder: (context, viewModel, _) {
          return StreamBuilder<List<Group>>(
            stream: viewModel.allGroups,
            builder: (context, groupListSnapshot) {
              return Scaffold(
                backgroundColor: NVColors.grayF9,
                appBar: AppBar(
                  centerTitle: false,
                  titleSpacing: 24,
                  toolbarHeight:
                      isTablet ? kToolbarHeight + 40 : kToolbarHeight,
                  title: Text(
                    'Space List',
                    style: GoogleFonts.notoSans(
                      textStyle: TextStyle(
                        color: NVColors.black,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: isTablet ? 26 : 20,
                      ),
                    ),
                  ),
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor ==
                          Colors.transparent
                      ? NVColors.grayF9
                      : NVColors.grayF9,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: IconButton(
                        iconSize: isTablet ? 40 : 24,
                        onPressed: () {
                          if (groupListSnapshot.data == null ||
                              groupListSnapshot.data!.isEmpty) {
                            const snackBar = SnackBar(
                              content: Text(
                                  'Please enter a group name',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                ),
                              ),
                              backgroundColor: Colors.redAccent,
                              duration: Duration(
                                  seconds: 2,
                                  milliseconds: 0),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            return;
                          }
                            context.push('/createDrama');
                        },
                        icon: const Icon(
                          Icons.add,
                        ),
                        color: NVColors.black,
                      ),
                    ),
                  ],
                ),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 8),
                      child: StreamBuilder<int>(
                        stream: viewModel.selectedGroupIndex,
                        builder: (context, selectedGroupIndexSnapshot) {
                          debugPrint(
                              'selectedGroupIndexSnapshot = ${selectedGroupIndexSnapshot.data}');
                          if (groupListSnapshot.data == null) {
                            return Wrap(
                              spacing: 8,
                              runSpacing: 4,
                              children:
                                  List<Widget>.generate(2, (int groupIndex) {
                                debugPrint(
                                    '00 groupIndex = $groupIndex, selectedGroupIndexSnapshot = ${selectedGroupIndexSnapshot.data}');
                                return (groupIndex == 1)
                                    ? IconButton(
                                        iconSize: isTablet ? 40 : 24,
                                        onPressed: () {
                                          showTwoButtonContentAlertDialog(
                                            dialogBackgroundColor:
                                                NVColors.white,
                                            context: context,
                                            titleText: 'Create Group',
                                            content: TextFormField(
                                              focusNode: dramaNameFocusNode,
                                              cursorColor: NVColors.cyan,
                                              controller:
                                                  groupNameEditController,
                                              onChanged: (newValue) {},
                                              style: GoogleFonts.notoSans(
                                                textStyle: const TextStyle(
                                                  color: NVColors.gray5A,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: NVColors.grayF9,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: NVColors.white,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: NVColors.white,
                                                  ),
                                                ),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                hintText:
                                                    'Please enter group name',
                                                hintStyle: GoogleFonts.notoSans(
                                                  textStyle: const TextStyle(
                                                    color: Color(0xFFBDBDBD),
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                focusColor: NVColors.cyan,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                    color: NVColors.cyan,
                                                  ),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 16,
                                                ),
                                              ),
                                              onFieldSubmitted: (value) {},
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    80),
                                              ],
                                            ),
                                            positiveButtonText: 'Submit',
                                            negativeButtonText: 'Cancel',
                                            positiveButtonColor: NVColors.cyan,
                                            negativeButtonColor:
                                                NVColors.cancelRed,
                                            onPositivePressedCallback: () {
                                              if (groupNameEditController
                                                  .text.isEmpty) {
                                                const snackBar = SnackBar(
                                                  content: Text(
                                                      'Please enter a group name'),
                                                  backgroundColor:
                                                      Colors.redAccent,
                                                  duration: Duration(
                                                      seconds: 2,
                                                      milliseconds: 0),
                                                );
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(snackBar);
                                                return;
                                              }

                                              viewModel.addGroup(
                                                groupName:
                                                    groupNameEditController
                                                        .text,
                                              );
                                              debugPrint(
                                                  'onPositivePressedCallback');
                                              groupNameEditController.clear();
                                              context.pop();
                                            },
                                            onNegativePressedCallback: () {
                                              debugPrint(
                                                  'onNegativePressedCallback');
                                              context.pop();
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                        ),
                                        color: NVColors.black,
                                      )
                                    : ChoiceChip(
                                        labelPadding: EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 0.0),
                                        label: Text(
                                          'Group',
                                          style: GoogleFonts.notoSans(
                                            textStyle: const TextStyle(
                                              letterSpacing: 0.4,
                                              color: NVColors.gray93,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Noto Sans TC',
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        backgroundColor: NVColors.grayF9,
                                        selectedColor: NVColors.grayE6,
                                        disabledColor: Colors.grey[300],
                                        elevation: 1.0,
                                        selected:
                                            selectedGroupIndexSnapshot.data ==
                                                groupIndex,
                                        onSelected: (bool selected) {
                                          debugPrint(
                                              'selected = $selected, groupIndex = $groupIndex');
                                          viewModel.onSelectedIndexChanged(
                                              selectedIndex: groupIndex);
                                        },
                                        showCheckmark: false,
                                        shape: const StadiumBorder(
                                          side: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      );
                              }),
                            );
                          }
                          debugPrint(
                              '3. groupListSnapshot.data = ${groupListSnapshot.data}, groupListSnapshot.data!.length = ${groupListSnapshot.data!.length}');
                          return Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: List<Widget>.generate(
                                groupListSnapshot.data!.length + 1,
                                (int groupIndex) {
                              debugPrint(
                                  'groupIndex = $groupIndex, selectedGroupIndexSnapshot = ${selectedGroupIndexSnapshot.data}');
                              final isSelected =
                                  selectedGroupIndexSnapshot.data == groupIndex;
                              return (groupIndex ==
                                      (groupListSnapshot.data!.length))
                                  ? IconButton(
                                      iconSize: isTablet ? 40 : 24,
                                      onPressed: () {
                                        showTwoButtonContentAlertDialog(
                                          dialogBackgroundColor: NVColors.white,
                                          context: context,
                                          titleText: 'Create Group',
                                          content: TextFormField(
                                            focusNode: dramaNameFocusNode,
                                            cursorColor: NVColors.cyan,
                                            controller: groupNameEditController,
                                            onChanged: (newValue) {},
                                            style: GoogleFonts.notoSans(
                                              textStyle: const TextStyle(
                                                color: NVColors.gray5A,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 16,
                                              ),
                                            ),
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: NVColors.grayF9,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                  color: NVColors.white,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                  color: NVColors.white,
                                                ),
                                              ),
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.never,
                                              hintText:
                                                  'Please enter group name',
                                              hintStyle: GoogleFonts.notoSans(
                                                textStyle: const TextStyle(
                                                  color: Color(0xFFBDBDBD),
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              focusColor: NVColors.cyan,
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: const BorderSide(
                                                  color: NVColors.cyan,
                                                ),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 16,
                                              ),
                                            ),
                                            onFieldSubmitted: (value) {},
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  80),
                                            ],
                                          ),
                                          positiveButtonText: 'Submit',
                                          negativeButtonText: 'Cancel',
                                          positiveButtonColor: NVColors.cyan,
                                          negativeButtonColor:
                                              NVColors.cancelRed,
                                          onPositivePressedCallback: () {
                                            if (groupNameEditController
                                                .text.isEmpty) {
                                              const snackBar = SnackBar(
                                                content: Text(
                                                    'Please enter a group name'),
                                                backgroundColor:
                                                    Colors.redAccent,
                                                duration: Duration(
                                                    seconds: 2,
                                                    milliseconds: 0),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                              return;
                                            }

                                            viewModel.addGroup(
                                              groupName:
                                                  groupNameEditController.text,
                                            );
                                            debugPrint(
                                                'onPositivePressedCallback');
                                            groupNameEditController.clear();
                                            context.pop();
                                          },
                                          onNegativePressedCallback: () {
                                            debugPrint(
                                                'onNegativePressedCallback');
                                            context.pop();
                                          },
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                      ),
                                      color: NVColors.black,
                                    )
                                  : ChoiceChip(
                                      labelPadding: EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 0.0),
                                      label: Text(
                                        groupListSnapshot.data![groupIndex].name,
                                        style: GoogleFonts.notoSans(
                                          textStyle: const TextStyle(
                                            letterSpacing: 0.4,
                                            color: NVColors.gray93,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Noto Sans TC',
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      backgroundColor: NVColors.grayF9,
                                      selectedColor: NVColors.grayE6,
                                      disabledColor: Colors.grey[300],
                                      elevation: 1.0,
                                      selected:
                                          selectedGroupIndexSnapshot.data ==
                                              groupIndex,
                                      onSelected: (bool selected) {
                                        debugPrint(
                                            'selected = $selected, groupIndex = $groupIndex');
                                        viewModel.onSelectedIndexChanged(
                                            selectedIndex: groupIndex);
                                      },
                                      showCheckmark: false,
                                      shape: StadiumBorder(
                                        side: BorderSide(
                                          color: isSelected
                                              ? NVColors.grayE6
                                              : Colors.transparent,
                                        ),
                                      ),
                                    );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ), // This trailing comma makes auto-formatting nicer for build methods.
              );
            },
          );
        },
      ),
    );
  }
}

bool get isTablet {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  final logicalShortestSide =
      firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  return logicalShortestSide > 600;
}
