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
        ProfileRoute(),
        ContactUsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            appBar: AppBar(
              title: const Text("Bottom Tabs"),
            ),
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.abc),
                ),
                BottomNavigationBarItem(
                  label: 'contact us',
                  icon: Icon(Icons.abc_outlined),
                ),
              ],
            ));
      },
    );
  }
}
