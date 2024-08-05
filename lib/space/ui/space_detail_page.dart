import 'dart:io';

import 'package:find_space/space/cubit/space_detail_cubit.dart';
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
import 'package:image_picker/image_picker.dart';

const defaultSelection = Group(name: 'Select Group');

class SpaceDetailPage extends StatelessWidget {
  SpaceDetailPage({
    super.key,
    this.groupsArgs,
    this.space,
  }) {
    for (final group in groupsArgs!) {
      if (group.id == space?.group) {
        debugPrint('SpaceDetailPage group.id = ${group.id}');
        debugPrint('SpaceDetailPage group.name = ${group.name}');
        selectedGroup = group;
      }
    }
  }

  final List<Group>? groupsArgs;
  final Space? space;
  late final Group selectedGroup;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SpaceDetailCubit(
        group: selectedGroup,
        // space: space,
        // imagePath: space?.image,
      )..watchSpaceStream(space!.id!),
      child: SpaceDetailView(
        groups: groupsArgs!,
      ),
    );
  }
}

class SpaceDetailView extends StatelessWidget {
  SpaceDetailView({
    super.key,
    // required this.space,
    required this.groups,
  });

  final List<Group> groups;

  // final Space space;
  // final Group selectedGroup;
  final spaceNameEditController = TextEditingController();
  final spaceNameFocusNode = FocusNode();
  final spaceDescriptionEditController = TextEditingController();
  final spaceDescriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SpaceDetailCubit, SpaceDetailState>(
      listener: (context, state) {},
      builder: (context, state) {
        final (isLoading, selectedGroup, space) = state.maybeWhen(
          spaceDetailLoaded: (isLoading, group, space) {
            return (isLoading, group, space);
          },
          orElse: () => (null, null, null),
        );
        // debugPrint('EditSpaceView build() space.name = ${space.name}');
        // debugPrint('EditSpaceView build() space.rating = ${space.rating}');
        return switch (state) {
          _ => Scaffold(
              backgroundColor: NVColors.grayF9,
              appBar: AppBar(
                toolbarHeight: isTablet ? kToolbarHeight + 40 : kToolbarHeight,
                iconTheme: const IconThemeData(
                  color: NVColors.gray5A, //change your color here
                ),
                title: Text(
                  space == null ? '' : space.name,
                  style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                      color: NVColors.gray5A,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: isTablet ? 26 : 18,
                    ),
                  ),
                ),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor ==
                        Colors.transparent
                    ? NVColors.grayF9
                    : NVColors.grayF9,
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: BottomAppBar(
                  height: isTablet ? 120 : 80,
                  color: NVColors.grayF9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () async {
                              await context.pushNamed(
                                RouteName.spaceEdit,
                                pathParameters: {
                                  RouteParam.spaceId: space!.id.toString(),
                                },
                                extra: {
                                  RouteParam.groups: groups,
                                  RouteParam.space: space,
                                },
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: NVColors.cyan,
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Edit',
                              style: GoogleFonts.notoSans(
                                textStyle: TextStyle(
                                  color: NVColors.white,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: isTablet ? 28 : 16,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(width: 32,),
                        Expanded(
                          child: TextButton(
                            onPressed: () async {
                              showTwoButtonAlertDialog(
                                context: context,
                                titleText: 'Delete',
                                alertText: 'Are you sure to delete it？',
                                positiveButtonText: 'Yes',
                                negativeButtonText: 'No',
                                onPositivePressedCallback: () async {
                                  debugPrint('onPositivePressedCallback');
                                  context.pop();
                                  await context
                                      .read<SpaceDetailCubit>()
                                      .deleteSpace(id: space!.id!);
                                  context.pop();
                                },
                                onNegativePressedCallback: () {
                                  debugPrint('onNegativePressedCallback');
                                  context.pop();
                                },
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: NVColors.cancelRed,
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Delete',
                              style: GoogleFonts.notoSans(
                                textStyle: TextStyle(
                                  color: NVColors.white,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: isTablet ? 28 : 16,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (space != null) ...[
                            Text(
                              'Group',
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  color: NVColors.gray5A,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                buttonTheme: ButtonTheme.of(context).copyWith(
                                  alignedDropdown: true,
                                ),
                              ),
                              child: DropdownButtonFormField<Group>(
                                icon: const Icon(
                                  Icons.expand_more_rounded,
                                  size: 28,
                                ),
                                style: GoogleFonts.notoSans(
                                  textStyle: const TextStyle(
                                    color: NVColors.gray5A,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                  ),
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    right: 16,
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  label: Text(
                                    '*',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFBDBDBD)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFBDBDBD)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFBDBDBD)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                dropdownColor: Colors.white,
                                value: selectedGroup,
                                onChanged: (Group? newValue) {
                                  debugPrint(
                                    'onChanged, newValue = $newValue',
                                  );
                                  if (newValue == defaultSelection) {
                                    return;
                                  } else {
                                    context
                                        .read<SpaceDetailCubit>()
                                        .onGroupSelected(group: newValue!);
                                  }
                                },
                                items: [defaultSelection, ...groups]
                                    // .map((group) => group.name)
                                    .toList()
                                    .map<DropdownMenuItem<Group>>(
                                        (Group value) {
                                  return DropdownMenuItem<Group>(
                                    value: value,
                                    child: Text(
                                      value.name,
                                      // style: GoogleFonts.notoSans(
                                      //   textStyle: const TextStyle(
                                      //     color: Color(0xFFBDBDBD),
                                      //     fontWeight: FontWeight.w400,
                                      //     fontStyle: FontStyle.normal,
                                      //     fontSize: 16,
                                      //   ),
                                      // ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Space Name',
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  color: NVColors.gray5A,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              readOnly: true,
                              // focusNode: spaceNameFocusNode,
                              cursorColor: NVColors.cyan,
                              controller: spaceNameEditController
                                ..text = space.name,
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
                                fillColor: NVColors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: NVColors.grayC7,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: NVColors.grayC7,
                                  ),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintText: 'Please enter space name',
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
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: NVColors.cyan,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                              ),
                              onFieldSubmitted: (value) {},
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(80),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Rating',
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  color: NVColors.gray5A,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            RatingBar.builder(
                              itemBuilder: (context, index) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                              initialRating: space.rating,
                              ignoreGestures: true,
                              onRatingUpdate: (newRating) {
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            if (space.image != null)
                              AspectRatio(
                                aspectRatio: 16 / 10,
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.memory(
                                        space.image!,
                                      ).image,
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            else
                              Card(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: NVColors.grayC7,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                  },
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 16 / 10,
                                    child: Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.add_photo_alternate_outlined,
                                            size: 56,
                                            color: NVColors.grayC7,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Photo',
                                            style: GoogleFonts.notoSans(
                                              textStyle: const TextStyle(
                                                color: NVColors.grayAA,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Description',
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  color: NVColors.gray5A,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              readOnly: true,
                              cursorColor: NVColors.cyan,
                              controller: spaceDescriptionEditController
                                ..text = space.description,
                              onChanged: (newValue) {},
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  color: NVColors.gray5A,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: 6,
                              minLines: 3,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: NVColors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: NVColors.grayC7,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: NVColors.grayC7,
                                  ),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintText: 'Please enter note description',
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
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: NVColors.cyan,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                              ),
                              onFieldSubmitted: (value) {},
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(80),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  if (isLoading ?? false)
                    const Center(
                      child: SpinKitWave(
                        size: 56,
                        color: NVColors.cyan,
                      ),
                    ),
                ],
              ),
            ),
        };
      },
    );
  }
}

bool get isTablet {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  final logicalShortestSide =
      firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  return logicalShortestSide > 600;
}
