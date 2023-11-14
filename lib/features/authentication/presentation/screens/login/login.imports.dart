import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/extentions/string_extensions.dart';
import 'package:interview_test/core/router/router.dart';
import 'package:interview_test/features/authentication/presentation/screens/login/bloc/login_bloc.dart';

import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_text_style_enum.dart';
import '../../../../../core/constants/enums.dart';
import '../../../../../core/shared_widgets/app_bars/default_appbar.dart';
import '../../../../../core/shared_widgets/form_builder/app_button/app_button.dart';
import '../../../../../core/shared_widgets/form_builder/app_button/icon_widget.dart';
import '../../../../../core/shared_widgets/form_builder/app_text.dart';
import '../../../../../core/shared_widgets/form_builder/app_text_form_fied.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../generated/translations.g.dart';
import '../../../../../injection.dart';
import '../../../../onbording/presentation/screens/onbording/widgets/custom_line.dart';

part 'login_screen.dart';
