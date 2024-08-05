import 'dart:io';

import 'package:find_space/config/injection_container.dart';
import 'package:find_space/space/cubit/spaces_cubit.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
import 'package:find_space/space/router/route_constants.dart';
import 'package:find_space/space/ui/colors.dart';
import 'package:find_space/space/ui/dialog_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SpacesCubit()..watchData(),
      child: const SpacesView(),
    );
  }
}

class SpacesView extends StatefulWidget {
  const SpacesView({super.key});

  @override
  State<SpacesView> createState() => _SpacesViewState();
}

class _SpacesViewState extends State<SpacesView> {
  final groupNameEditController = TextEditingController();
  final groupNameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    debugPrint('build _SpacesViewState');
    return _SpaceListBody();
  }
}

class _SpaceListBody extends StatelessWidget {
  _SpaceListBody();

  // final List<Group>? groups;
  // final List<Space>? spaces;

  final groupNameEditController = TextEditingController();
  final groupNameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SpacesCubit, SpacesState>(
      listener: (context, state) {
        if (state is GroupSpacesLoaded) {
          debugPrint(
              'listener yoyoyo state.selectedGroupId = ${state.selectedGroupId}');
        }
      },
      builder: (context, state) {
        if (state is GroupSpacesLoaded) {
          return Scaffold(
            backgroundColor: NVColors.grayF9,
            appBar: AppBar(
              centerTitle: false,
              titleSpacing: 24,
              toolbarHeight: isTablet ? kToolbarHeight + 40 : kToolbarHeight,
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
                      state.maybeWhen(
                        groupsSpacesLoaded:
                            (isLoading, groups, spaces, groupId) async {
                          if (groups == null || groups.isEmpty) {
                            final snackBar = SnackBar(
                              content: Text(
                                'Please create a group first',
                                style: GoogleFonts.notoSans(
                                  textStyle: const TextStyle(
                                    color: NVColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.redAccent,
                              duration: Duration(seconds: 2, milliseconds: 0),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            return;
                          }
                          final result = await context
                              .pushNamed(RouteName.createSpace, extra: groups);
                          debugPrint('result = $result');
                        },
                        orElse: () {},
                      );
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
                if (state.groups != null && state.groups!.isEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 4),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: List<Widget>.generate(2, (int groupIndex) {
                        debugPrint('00 groupIndex = $groupIndex');
                        return (groupIndex == 1)
                            ? IconButton(
                                iconSize: isTablet ? 40 : 24,
                                onPressed: () {
                                  showTwoButtonContentAlertDialog(
                                    dialogBackgroundColor: NVColors.white,
                                    context: context,
                                    titleText: 'Create Group',
                                    content: TextFormField(
                                      focusNode: groupNameFocusNode,
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
                                        hintText: 'Please enter group name',
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
                                        LengthLimitingTextInputFormatter(80),
                                      ],
                                    ),
                                    positiveButtonText: 'Submit',
                                    negativeButtonText: 'Cancel',
                                    positiveButtonColor: NVColors.cyan,
                                    negativeButtonColor: NVColors.cancelRed,
                                    onPositivePressedCallback: () {
                                      if (groupNameEditController
                                          .text.isEmpty) {
                                        const snackBar = SnackBar(
                                          content:
                                              Text('Please enter a group name'),
                                          backgroundColor: Colors.redAccent,
                                          duration: Duration(
                                              seconds: 2, milliseconds: 0),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                        return;
                                      }

                                      context.read<SpacesCubit>().addGroup(
                                            groupName:
                                                groupNameEditController.text,
                                          );
                                      debugPrint('onPositivePressedCallback');
                                      groupNameEditController.clear();
                                      context.pop();
                                    },
                                    onNegativePressedCallback: () {
                                      debugPrint('onNegativePressedCallback');
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
                                labelPadding: const EdgeInsets.symmetric(
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
                                selected: false,
                                onSelected: (bool selected) {},
                                showCheckmark: false,
                                shape: const StadiumBorder(
                                  side: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                              );
                      }),
                    ),
                  ),
                ],
                if (state.groups != null && state.groups!.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 4),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: List<Widget>.generate(state.groups!.length + 1,
                          (int groupIndex) {
                        // debugPrint(
                        //     'groupIndex = $groupIndex, groups = ${state.groups}');
                        return (groupIndex == (state.groups!.length))
                            ? IconButton(
                                iconSize: isTablet ? 40 : 24,
                                onPressed: () {
                                  showTwoButtonContentAlertDialog(
                                    dialogBackgroundColor: NVColors.white,
                                    context: context,
                                    titleText: 'Create Group',
                                    content: TextFormField(
                                      focusNode: groupNameFocusNode,
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
                                        hintText: 'Please enter group name',
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
                                        LengthLimitingTextInputFormatter(80),
                                      ],
                                    ),
                                    positiveButtonText: 'Submit',
                                    negativeButtonText: 'Cancel',
                                    positiveButtonColor: NVColors.cyan,
                                    negativeButtonColor: NVColors.cancelRed,
                                    onPositivePressedCallback: () {
                                      if (groupNameEditController
                                          .text.isEmpty) {
                                        const snackBar = SnackBar(
                                          content:
                                              Text('Please enter a group name'),
                                          backgroundColor: Colors.redAccent,
                                          duration: Duration(
                                              seconds: 2, milliseconds: 0),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                        return;
                                      }

                                      context.read<SpacesCubit>().addGroup(
                                            groupName:
                                                groupNameEditController.text,
                                          );
                                      debugPrint('onPositivePressedCallback');
                                      groupNameEditController.clear();
                                      context.pop();
                                    },
                                    onNegativePressedCallback: () {
                                      debugPrint('onNegativePressedCallback');
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
                                labelPadding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 0),
                                label: Text(
                                  state.groups![groupIndex].name,
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
                                selected: state.groups![groupIndex].id ==
                                    state.selectedGroupId,
                                onSelected: (bool selected) {
                                  debugPrint(
                                      'selected = $selected, groupIndex = $groupIndex');
                                  context
                                      .read<SpacesCubit>()
                                      .onSelectedGroupIndexChanged(
                                        selectedIndex: groupIndex,
                                        groupId: state.groups![groupIndex].id!,
                                      );
                                  context
                                      .read<SpacesCubit>()
                                      .fetchSpacesInGroup(
                                        groupId: state.groups![groupIndex].id,
                                      );
                                },
                                showCheckmark: false,
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color: state.groups![groupIndex].id ==
                                            state.selectedGroupId
                                        ? NVColors.grayE6
                                        : Colors.transparent,
                                  ),
                                ),
                              );
                      }),
                    ),
                  ),
                ],
                if (state.spaces != null && state.spaces!.isNotEmpty) ...[
                  const SizedBox(
                    height: 32,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: state.spaces!.length,
                        itemBuilder: (BuildContext context, int index) {
                          debugPrint(
                              'ListView.builder, index = $index, spaces.name = ${state.spaces![index].name}');
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: InkWell(
                              onTap: () {
                                context.pushNamed(
                                  RouteName.spaceDetail,
                                  pathParameters: {
                                    RouteParam.spaceId:
                                        state.spaces![index].id.toString(),
                                  },
                                  extra: {
                                    RouteParam.groups: state.groups,
                                    RouteParam.space: state.spaces![index],
                                  },
                                );
                              },
                              child: (state.spaces![index].image == null)
                                  ? AspectRatio(
                                      aspectRatio: 16 / 10,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                              color: NVColors.cyan,
                                              borderRadius:
                                                  BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 24, vertical: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: Text(
                                                    '${state.spaces![index].name}',
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.notoSans(
                                                      textStyle:
                                                          const TextStyle(
                                                        letterSpacing: 1.6,
                                                        color: NVColors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily:
                                                            'Noto Sans TC',
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 32,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Center(
                                                  child: RatingBar.builder(
                                                    itemBuilder:
                                                        (context, index) {
                                                      return const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      );
                                                    },
                                                    unratedColor:
                                                        NVColors.grayAA,
                                                    initialRating: state
                                                        .spaces![index].rating,
                                                    ignoreGestures: true,
                                                    onRatingUpdate:
                                                        (double value) {},
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : AspectRatio(
                                      aspectRatio: 16 / 10,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                colorFilter: ColorFilter.mode(
                                                  NVColors.cyan
                                                      .withOpacity(0.5),
                                                  BlendMode.hardLight,
                                                ),
                                                image: Image.memory(
                                                  state.spaces![index].image!,
                                                  //widget.dramaImage!,
                                                ).image,
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 24, vertical: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: Text(
                                                    '${state.spaces![index].name}',
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.notoSans(
                                                      textStyle:
                                                          const TextStyle(
                                                        letterSpacing: 1.6,
                                                        color: NVColors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily:
                                                            'Noto Sans TC',
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 32,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Center(
                                                  child: RatingBar.builder(
                                                    itemBuilder:
                                                        (context, index) {
                                                      return const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      );
                                                    },
                                                    unratedColor:
                                                        NVColors.grayAA,
                                                    initialRating: state
                                                        .spaces![index].rating,
                                                    ignoreGestures: true,
                                                    onRatingUpdate:
                                                        (double value) {},
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}

class SpacesLoadingScreen extends StatelessWidget {
  const SpacesLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitWave(
        size: 56,
        color: NVColors.cyan,
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
