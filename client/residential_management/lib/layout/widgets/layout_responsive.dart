import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:residential_management/navigation/navigation.dart';

class LayoutResponsive extends StatelessWidget {
  const LayoutResponsive({required this.index, super.key, this.child});

  final int index;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        context.read<LayoutCubit>().determineLayoutByWidth(screenWidth);

        return BlocBuilder<LayoutCubit, LayoutState>(
          builder: (context, state) {
            if (state == LayoutState.mobile) {
              return Column(
                children: [
                  Expanded(
                    child: child ?? const SizedBox(),
                  ),
                  NavigationMobile(index: index),
                ],
              );
            }

            if (state == LayoutState.desktop) {
              return Row(
                children: [
                  NavigationDesktop(index: index),
                  Expanded(
                    child: child ?? const SizedBox(),
                  ),
                ],
              );
            }

            return const SizedBox();
          },
        );
      },
    );
  }
}
