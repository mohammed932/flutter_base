part of 'tabs.imports.dart';

@RoutePage()
class GiftTabsScreen extends StatefulWidget {
  const GiftTabsScreen({super.key});

  @override
  State<GiftTabsScreen> createState() => _GiftTabsScreenState();
}

class _GiftTabsScreenState extends State<GiftTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        SentRoute(),
        ReceivedRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.abc)),
                Tab(text: '2', icon: Icon(Icons.abc)),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
