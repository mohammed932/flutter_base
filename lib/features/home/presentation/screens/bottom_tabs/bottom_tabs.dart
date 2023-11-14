part of 'bottom_tabs.imports.dart';

@RoutePage()
class BottomTabsScreen extends StatefulWidget {
  const BottomTabsScreen({super.key});

  @override
  State<BottomTabsScreen> createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        FavoritesRoute(),
        ProjectsRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: AppNavBar(
              activeIndex: tabsRouter.activeIndex,
              onTap: (index) => tabsRouter.setActiveIndex(index),
            ));
      },
    );
  }
}

class AppNavBar extends StatelessWidget {
  const AppNavBar({super.key, required this.activeIndex, required this.onTap});
  final int activeIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      width: double.infinity,
      height: 90.h,
      decoration: BoxDecoration(color: AppColors.offWhite, boxShadow: [
        BoxShadow(
          color: AppColors.black.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 15,
          offset: const Offset(0, 5),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          navIcons.length,
          (index) => InkWell(
            onTap: () => onTap(index),
            child: Container(
              //width: 50.w,
              child: Column(
                children: [
                  Container(
                    width: 50.w,
                    height: 8.h,
                    color: activeIndex == index
                        ? AppColors.primaryGreen
                        : Colors.transparent,
                  ),
                  Spacer(),
                  IconWidget(
                    iconConfig: IconConfig(
                      name: navIcons[index].icon,
                      width: 30.w,
                      height: 27.h,
                      onTap: () => onTap(index),
                    ),
                  ),
                  Gap(5.h),
                  AppText.full(
                    title: tr(navIcons[index].title),
                    style: AppTextStyle.grayW400F16,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<AppNavItems> navIcons = [
  AppNavItems(title: LocaleKeys.home, icon: AppIcons.homeIcon),
  AppNavItems(title: LocaleKeys.favorites, icon: AppIcons.favoriteIcon),
  AppNavItems(title: LocaleKeys.projects, icon: AppIcons.projectsIcon),
  AppNavItems(title: LocaleKeys.home, icon: AppIcons.homeIcon),
];

class AppNavItems {
  final String title;
  final String icon;

  AppNavItems({required this.title, required this.icon});
}
