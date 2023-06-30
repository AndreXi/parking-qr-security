import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:residential_management/navigation/navigation.dart';

class LayoutResponsive extends StatelessWidget {
  const LayoutResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: Builder(
        builder: (context) {
          final screenWidth = MediaQuery.of(context).size.width;
          context.read<LayoutCubit>().determineLayoutByWidth(screenWidth);

          return BlocBuilder<LayoutCubit, LayoutState>(
            builder: (context, state) {
              if (state == LayoutState.mobile) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.indigo,
                        child: Text('Mobile'),
                      ),
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
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.green,
                        child: Text('Desktop'),
                      ),
                    ),
                  ],
                );
              }

              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
