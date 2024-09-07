import 'package:doc_clinic/core/routings/app_router.dart';
import 'package:doc_clinic/core/routings/routers.dart';
import 'package:doc_clinic/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyClinic extends StatelessWidget {
  final AppRouter appRouter;
  const MyClinic({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Doc App',
            theme: ThemeData(
              primaryColor: ColorsManager.mainBlue,
              scaffoldBackgroundColor: Colors.white,
              useMaterial3: true,
            ),
            initialRoute: Routers.onBoarding,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: appRouter.generateRoute,
          );
        });
  }
}
