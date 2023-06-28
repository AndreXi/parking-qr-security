import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:residential_management/layout/layout.dart';

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
                return Container(
                  width: 64,
                  height: 64,
                  color: Colors.blue,
                  child: Text('MObile'),
                );
              }

              if (state == LayoutState.desktop) {
                return Container(
                  width: 64,
                  height: 64,
                  color: Colors.green,
                  child: Text('Desktop'),
                );
              }

              return SizedBox();
            },
          );
        },
      ),
    );
  }
}
