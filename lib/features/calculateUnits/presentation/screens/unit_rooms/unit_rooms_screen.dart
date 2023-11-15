part of 'unit_rooms.import.dart';

@RoutePage()
class UnitRoomsScreen extends StatelessWidget {
  const UnitRoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar.normalAppBar(
        title: getIt.get<IUnitInfoBloc>().state.unitName,
        isCenter: true,
        withShadow: true,
        actions: [
          IconWidget(
            iconConfig: IconConfig(name: AppIcons.addRoomIcon),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 16.h,
          horizontal: 16.h,
        ),
        children: [],
      ),
    );
  }
}
