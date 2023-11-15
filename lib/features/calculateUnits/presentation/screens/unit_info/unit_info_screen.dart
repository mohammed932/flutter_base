part of 'unit_info.imports.dart';

@RoutePage()
class UnitInfoScreen extends StatelessWidget with ValidationMixin {
  const UnitInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<IUnitInfoBloc>(),
      child: Scaffold(
        appBar: DefaultAppBar.normalAppBar(
          title: tr(LocaleKeys.calculate_unit),
          isCenter: true,
          withShadow: true,
        ),
        body: BlocBuilder<IUnitInfoBloc, UnitInfoState>(
          builder: (context, state) {
           
            return ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              children: [
                AppTextFormField(
                  labelText: tr(LocaleKeys.unit_name),
                  hintText: tr(LocaleKeys.type_anything),
                ),
                Gap(30.h),
                AppText(
                  title: tr(LocaleKeys.unit_type),
                  style: AppTextStyle.primaryGreenW400F20,
                ),
                Gap(8.h),
                UnitTypesScelection(),
                Gap(8.h),
                AppDropSelection<String>(
                  title: LocaleKeys.unit_location,
                  hint: LocaleKeys.choose_unit_location,
                  items: ["Cairo", "Giza"],
                  onSelect: (selectedItem) {},
                ),
                Gap(8.h),
                AppDropSelection<String>(
                  title: LocaleKeys.choose_unit_area,
                  hint: LocaleKeys.choose_area_of_your_unit,
                  items: ["Cairo", "Giza"],
                  onSelect: (selectedItem) {},
                ),
                Gap(8.h),
                AppDropSelection<String>(
                  title: LocaleKeys.choose_the_floor_of_your_nit,
                  hint: LocaleKeys.choose_floor,
                  items: [
                    "Ground floor",
                    "First floor",
                    "First floor",
                    "First floor",
                    "First floor"
                  ],
                  onSelect: (selectedItem) {},
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            top: 16.w,
            bottom: 40.h,
            left: 16.w,
            right: 16.w,
          ),
          child: AppButton.basic(
            onTap: () {},
            title: tr(LocaleKeys.continue_to_next),
            appButtonConfig: AppButtonConfig(),
          ),
        ),
      ),
    );
  }
}
