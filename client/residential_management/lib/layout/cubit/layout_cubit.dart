import 'package:bloc/bloc.dart';

enum LayoutState { initial, mobile, desktop }

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutState.initial);

  void determineLayoutByWidth(double screenWidth) {
    switch (screenWidth) {
      case <= 480:
        emit(LayoutState.mobile);
      default:
        emit(LayoutState.desktop);
    }
  }
}
