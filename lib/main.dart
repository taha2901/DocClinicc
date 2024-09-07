import 'package:doc_clinic/clinic_app.dart';
import 'package:doc_clinic/core/routings/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyClinic(
      appRouter: AppRouter(),
    ),
  );
}
