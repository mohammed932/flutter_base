import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/shared_widgets/app_bars/default_appbar.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_button/app_button.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_text.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_text_form_fied.dart';
import 'package:interview_test/features/calculateUnits/presentation/screens/unit_info/bloc/unit_info_bloc.dart';
import 'package:interview_test/generated/translations.g.dart';

import '../../../../../core/shared_widgets/app-selections/app_drop_selection.dart';
import '../../../../../core/utils/app_validation.dart';
import '../../../../../injection.dart';
import 'widgets/unit_types_selection.dart';

part 'unit_info_screen.dart';
