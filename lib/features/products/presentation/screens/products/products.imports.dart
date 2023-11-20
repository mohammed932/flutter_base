import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_test/core/constants/enums.dart';
import 'package:interview_test/core/injection/injection.dart';
import 'package:interview_test/core/router/router.dart';
import 'package:interview_test/features/products/domain/usecases/get_products_usecase.dart';
import '../../../domain/entities/product.dart';
import '../../blocs/bloc/products_bloc.dart';
import 'widgets/products_widgets.imports.dart';

part 'products_screen.dart';
