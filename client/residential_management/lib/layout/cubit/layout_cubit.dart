import 'package:bloc/bloc.dart';

enum LayoutState { initial, mobile, desktop }

const mobileBreakpoint = 480.0;

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutState.initial);

  void determineLayoutByWidth(double screenWidth) {
    switch (screenWidth) {
      case <= mobileBreakpoint:
        emit(LayoutState.mobile);
      default:
        emit(LayoutState.desktop);
    }
  }
}
