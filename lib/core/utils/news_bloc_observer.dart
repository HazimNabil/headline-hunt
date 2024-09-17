import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} $change');
  }
}
