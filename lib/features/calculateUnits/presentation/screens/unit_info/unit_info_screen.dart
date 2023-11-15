part of 'unit_info.imports.dart';

@RoutePage()
class UnitInfoScreen extends StatelessWidget with ValidationMixin {
  UnitInfoScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<IUnitInfoBloc>()..add(UnitInfoEvent.started()),
      child: Scaffold(
        appBar: DefaultAppBar.normalAppBar(
          title: LocaleKeys.calculate_unit,
          isCenter: true,
          withShadow: true,
        ),
        body: BlocBuilder<IUnitInfoBloc, UnitInfoState>(
          builder: (context, state) {
            return state.requestState == RequestState.LOADING
                ? LoadingView()
                : Form(
                    key: formKey,
                    child: ListView(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      children: [
                        AppTextFormField(
                          labelText: LocaleKeys.unit_name,
                          hintText: tr(LocaleKeys.type_anything),
                          initValue: state.unitName,
                          onSave: (value) {
                            getIt.get<IUnitInfoBloc>()
                              ..add(UnitInfoEvent.selectUnitName(value));
                          },
                          validator: (value) => isNullOrEmpty(value),
                        ),
                        Gap(30.h),
                        AppText(
                          title: tr(LocaleKeys.unit_type),
                          style: AppTextStyle.primaryGreenW400F20,
                        ),
                        Gap(8.h),
                        UnitTypesScelection(),
                        Gap(8.h),
                        AppDropSelection<UnitLocationModel>(
                          title: LocaleKeys.unit_location,
                          hint: state.selectedUnitLocation?.name ??
                              LocaleKeys.choose_unit_location,
                          items: state.locations,
                          itemTitle: (u) => "${u.name}",
                          onSelect: (selectedItem) => getIt.get<IUnitInfoBloc>()
                            ..add(
                                UnitInfoEvent.selectUnitLcoation(selectedItem)),
                        ),
                        Gap(8.h),
                        AppDropSelection<UnitAreaModel>(
                          title: LocaleKeys.choose_unit_area,
                          hint: LocaleKeys.choose_area_of_your_unit,
                          items: state.areas,
                          itemTitle: (u) => "${u.name}",
                          onSelect: (selectedItem) {
                            getIt.get<IUnitInfoBloc>().add(
                                UnitInfoEvent.selectUnitArea(selectedItem));
                          },
                        ),
                        Gap(8.h),
                        AppDropSelection<UnitFloorModel>(
                          title: LocaleKeys.choose_the_floor_of_your_nit,
                          hint: state.selectedUnitFloor?.name ??
                              LocaleKeys.choose_floor,
                          itemTitle: (u) => '${u.name}',
                          items: state.floors,
                          onSelect: (selectedItem) {},
                        ),
                      ],
                    ),
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
            onTap: () {
              try {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.router.push(UnitRoomsRoute());
                  // getIt.get<IUnitInfoBloc>()
                  //   ..add(UnitInfoEvent.storeUnitInfo());
                }
              } catch (e) {
                log("Error at $e");
              }
            },
            title: tr(LocaleKeys.continue_to_next),
            appButtonConfig: AppButtonConfig(),
          ),
        ),
      ),
    );
  }
}
