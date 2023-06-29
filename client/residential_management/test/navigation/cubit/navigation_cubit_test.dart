import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:residential_management/navigation/cubit/navigation_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('NavigationCubit', () {
    late NavigationCubit navigationCubit;
    late int randomIndex;

    setUp(() {
      navigationCubit = NavigationCubit();
      randomIndex = Random().nextInt(10);
    });

    test('initial state is [0]', () {
      expect(navigationCubit.state, 0);
    });

    blocTest<NavigationCubit, int>(
      'emits the index when [changeIndex] is called',
      build: () => navigationCubit,
      act: (cubit) => cubit.changeIndex(randomIndex),
      expect: () => [randomIndex],
    );
  });
}
