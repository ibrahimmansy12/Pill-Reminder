import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/new_entry_bloc_builder.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/new_entry_text.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/panel_title.dart';

import 'package:sizer/sizer.dart';

class NewEntryPage extends StatefulWidget {
  const NewEntryPage({super.key});

  @override
  State<NewEntryPage> createState() => _NewEntryPageState();
}

class _NewEntryPageState extends State<NewEntryPage> {
  // late TextEditingController nameControler;
  // late TextEditingController dosvageControler;
  // late GlobalKey<ScaffoldState> scafoldKey;
  // @override
  // void initState() {
  //   super.initState();
  //   nameControler = TextEditingController();
  //   dosvageControler = TextEditingController();
  //   scafoldKey = GlobalKey<ScaffoldState>();
  // }

  // @override
  // void dispose() {
  //   nameControler.dispose();
  //   dosvageControler.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: inject.scafoldKey,
        appBar: AppBar(
          title: const Text("ADD NEW"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NewEntryText(),
                SizedBox(
                  height: 2.h,
                ),
                const PanelTitle(
                  isRequired: false,
                  title: "Medcine Type",
                ),
                const NewEntryBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/*echo "# Pill-Reminder" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ibrahimmansy12/Pill-Reminder.git
git push -u origin main */

  // return state.when(initial: () {
                    //   return const CheckEntryChanges();
                    // }, sellectIntervals: (newEntryModel) {
                    //   return const SizedBox.shrink();
                    // }, sellectMedcineType: (newEntryModel) {
                    //   print("==================================${newEntryModel?.medicineTypeModel} ppppp");

                    //   return  CheckEntryChanges(newEntryModel: newEntryModel,);
                    // }, sellectTime: (newEntryModel) {
                    //   return const SizedBox.shrink();
                    // });
                     // return state.when(initial: () {
                    //   return const CheckEntryChanges();
                    // }, sellectIntervals: (newEntryModel) {
                    //   return const SizedBox.shrink();
                    // }, sellectMedcineType: (newEntryModel) {
                    //   print("==================================${newEntryModel?.medicineTypeModel} ppppp");

                    //   return  CheckEntryChanges(newEntryModel: newEntryModel,);
                    // }, sellectTime: (newEntryModel) {
                    //   return const SizedBox.shrink();
                    // });