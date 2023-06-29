import 'package:bloc_test/bloc_test.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:test/test.dart';

void main() {
  group('LayoutCubit', () {
    late LayoutCubit layoutCubit;

    setUp(() {
      layoutCubit = LayoutCubit();
    });

    test('initial state is [initial]', () {
      expect(layoutCubit.state, LayoutState.initial);
    });

    blocTest<LayoutCubit, LayoutState>(
      'emits [mobile] when width is <= [$mobileBreakpoint]',
      build: () => layoutCubit,
      act: (cubit) => cubit.determineLayoutByWidth(mobileBreakpoint),
      expect: () => [LayoutState.mobile],
    );

    blocTest<LayoutCubit, LayoutState>(
      'emits [desktop] when width is > [$mobileBreakpoint]',
      build: () => layoutCubit,
      act: (cubit) => cubit.determineLayoutByWidth(mobileBreakpoint + 1),
      expect: () => [LayoutState.desktop],
    );
  });
}
