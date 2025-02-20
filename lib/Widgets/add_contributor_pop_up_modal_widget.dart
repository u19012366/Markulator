import 'package:flutter/material.dart';

import '../Model/module_model.dart';
import 'contributor_creation_user_input_widget.dart';

class AddContributorPopUpModal extends StatefulWidget {
  const AddContributorPopUpModal({
    Key? key,
    required this.parent,
    required this.toEdit,
  }) : super(key: key);

  final MarkItem? parent;
  final MarkItem? toEdit;

  @override
  State<AddContributorPopUpModal> createState() =>
      _AddContributorPopUpModalState();
}

class _AddContributorPopUpModalState extends State<AddContributorPopUpModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        child: const Icon(Icons.add),
        onTap: () {
          showModalBottomSheet(
              isScrollControlled: true,
              isDismissible: true,
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom: Radius.zero,
                top: Radius.circular(14),
              )),
              builder: (ctx) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ContributorCreationUserInputWidget(
                      screenHeight: 0,
                      screenWidth: MediaQuery.of(ctx).size.width,
                      parent: widget.parent,
                      toEdit: widget.toEdit,
                    ),
                  ));
        },
      ),
    );
  }
}
