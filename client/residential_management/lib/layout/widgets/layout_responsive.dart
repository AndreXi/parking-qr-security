import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:residential_management/navigation/navigation.dart';

class LayoutResponsive extends StatelessWidget {
  const LayoutResponsive({super.key, this.child});

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
                  const NavigationMobile(),
                ],
              );
            }

            if (state == LayoutState.desktop) {
              return Row(
                children: [
                  const NavigationDesktop(),
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
