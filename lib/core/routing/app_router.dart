import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'routs.dart';
import '../../features/home%20page/ui/home_page.dart';
import '../../features/medcine%20detales/ui/medcine_detailes_page.dart';
import '../../features/new%20entry%20page/logic/new_entry_cubit.dart';
import '../../features/new%20entry%20page/ui/new_entry_page.dart';

class EAppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
       case ERouts.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => NewEntryCubit()..getReminders(),
                child: const Homepage()));
     
      case ERouts.newEntry:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => NewEntryCubit(),
                child: const NewEntryPage()));
      case ERouts.medcineDetailesPage:
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                value: context.read<NewEntryCubit>(),
                child: const MedcineDetailesPage()));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defigned for${settings.name}"),
                  ),
                ));
    }
  }
}
