import 'dart:io';

import 'package:find_space/space/cubit/edit_space_cubit.dart';
import 'package:find_space/space/domain/entity/group.dart';
import 'package:find_space/space/domain/entity/space.dart';
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

class EditSpacePage extends StatelessWidget {
  EditSpacePage({
    super.key,
    this.groupsArgs,
    this.space,
  }) {
    for (final group in groupsArgs!) {
      if (group.id == space?.group) {
        debugPrint('EditSpacePage group.id = ${group.id}');
        debugPrint('EditSpacePage group.name = ${group.name}');
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
      create: (_) => EditSpaceCubit(
        group:  selectedGroup,
        space: space,
        rating: space!.rating,
        isImageExisted: space!.image != null,
      ),
      child: EditSpaceView(groups: groupsArgs!,),
    );
  }
}

class EditSpaceView extends StatelessWidget {
  EditSpaceView({
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
    return BlocConsumer<EditSpaceCubit, EditSpaceState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        final (isLoading, selectedGroup, space, rating, isImageExisted, selectedImage, spaceUpdated) = state.maybeWhen(
          attributesSelected: (isLoading, group, space, rating, isImageExisted, imagePath, spaceUpdated) {
            debugPrint('EditSpaceView build() rating = $rating');
            return (isLoading, group, space, rating, isImageExisted ,imagePath, spaceUpdated);
          },
          orElse: () => (null, null, null, null, null, null, null),
        );
        // debugPrint('EditSpaceView build() space.name = ${space.name}');
        // debugPrint('EditSpaceView build() space.rating = ${space.rating}');
        return switch(state) {
          _ => Scaffold(
            backgroundColor: NVColors.grayF9,
            appBar: AppBar(
              toolbarHeight: isTablet ? kToolbarHeight + 40 : kToolbarHeight,
              iconTheme: const IconThemeData(
                color: NVColors.gray5A, //change your color here
              ),
              title: Text(
                'Edit',
                style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                    color: NVColors.gray5A,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: isTablet ? 26 : 18,
                  ),
                ),
              ),
              backgroundColor:
              Theme.of(context).scaffoldBackgroundColor == Colors.transparent
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
                            context.pop();
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
                            'Cancel',
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
                            if (selectedGroup == null || selectedGroup == defaultSelection) {
                              const snackBar = SnackBar(
                                content: Text('Please select a group'),
                                backgroundColor: Colors.redAccent,
                                duration: Duration(seconds: 2, milliseconds: 0),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              return;
                            }
                            if (spaceNameEditController.text.isEmpty) {
                              const snackBar = SnackBar(
                                content: Text('Please enter a space name'),
                                backgroundColor: Colors.redAccent,
                                duration: Duration(seconds: 2, milliseconds: 0),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              return;
                            }
                            if (spaceDescriptionEditController.text.isEmpty) {
                              const snackBar = SnackBar(
                                content: Text('Please enter a space description'),
                                backgroundColor: Colors.redAccent,
                                duration: Duration(seconds: 2, milliseconds: 0),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              return;
                            }
                            // Uint8List? spaceImage;
                            // if (selectedImage != null) {
                            //   debugPrint(
                            //       'Submit onPress selectedImage = $selectedImage');
                            //   final file = File(selectedImage);
                            //   spaceImage = await file.readAsBytes();
                            // } else {
                            //   spaceImage = null;
                            // }
                            await context.read<EditSpaceCubit>().updateSpace(
                              space: Space(
                                id: space!.id,
                                name: spaceNameEditController.text,
                                group: selectedGroup.id!,
                                description: spaceDescriptionEditController.text,
                                rating: rating!,
                                image: space.image,
                              ),
                            );
                            if (!context.mounted) return;
                            context.pop();
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                            ),
                            backgroundColor: NVColors.cyan,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Update',
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
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(
                                right: 16,
                                top: 16,
                                bottom: 16,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              label: Text(
                                '*',
                                style: TextStyle(color: Colors.red),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFBDBDBD)),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFBDBDBD)),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFBDBDBD)),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                    .read<EditSpaceCubit>()
                                    .onGroupSelected(group: newValue!);
                              }
                            },
                            items: [defaultSelection, ...groups]
                            // .map((group) => group.name)
                                .toList()
                                .map<DropdownMenuItem<Group>>((Group value) {
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
                          focusNode: spaceNameFocusNode,
                          cursorColor: NVColors.cyan,
                          controller: spaceNameEditController..text = (space == null) ? '': space.name,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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
                          initialRating: rating ?? 0,
                          onRatingUpdate: (newRating) {
                            debugPrint('onRatingUpdate newRating = $newRating');
                            context
                                .read<EditSpaceCubit>()
                                .onRatingUpdated(rating: newRating);
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        if ((isImageExisted != null && isImageExisted == true) ||
                            (selectedImage != null &&
                                selectedImage.isNotEmpty))
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AspectRatio(
                                  aspectRatio: 16 / 10,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: (isImageExisted ==
                                            true)
                                            ? Image.memory(
                                          space!.image!,
                                        ).image
                                            : FileImage(File(
                                            selectedImage!,),),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  child: GestureDetector(
                                    onTap: () {
                                      context
                                          .read<EditSpaceCubit>()
                                          .deletePickedImage();
                                    },
                                    child: const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: NVColors.grayAA,
                                      child: Icon(
                                        Icons.close,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                              _showPickerOptions(
                                context: context,
                                onCameraClicked: () async {
                                  await context
                                      .read<EditSpaceCubit>()
                                      .requestImageSourcePicker(
                                    context: context,
                                    imageSource: ImageSource.camera,
                                  );
                                },
                                onImageClicked: () async {
                                  await context
                                      .read<EditSpaceCubit>()
                                      .requestImageSourcePicker(
                                    context: context,
                                    imageSource: ImageSource.gallery,
                                  );
                                },
                              );
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
                          focusNode: spaceDescriptionFocusNode,
                          cursorColor: NVColors.cyan,
                          controller: spaceDescriptionEditController..text = (space == null) ? '': space.description,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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

void _showPickerOptions({
  required BuildContext context,
  VoidCallback? onCameraClicked,
  VoidCallback? onImageClicked,
}) {
  showModalBottomSheet<void>(
    context: context,
    builder: (context) {
      return SizedBox(
          height: 168,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(children: <Widget>[
              ListTile(
                onTap: () async {
                  onCameraClicked!;
                  context.pop();
                },
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
              ),
              ListTile(
                onTap: () async {
                  onImageClicked!();
                  context.pop();
                },
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose a photo'),
              )
            ]),
          ));
    },
  );
}

bool get isTablet {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  final logicalShortestSide =
      firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  return logicalShortestSide > 600;
}
