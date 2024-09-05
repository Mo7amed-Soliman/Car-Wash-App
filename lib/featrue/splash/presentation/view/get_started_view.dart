import 'package:car_wash_app/featrue/splash/presentation/view/widgets/get_started_view_bady.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff00293f),
      body: SafeArea(
        child: GetStartedViewBody(),
      ),
    );
  }
}
