part of 'products.imports.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<ProductsBloc>()..add(const LoadProductsEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          actions: [
            IconButton(
              onPressed: () => context.router.push(const GiftTabsRoute()),
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () => context.router.push(const BottomTabsRoute()),
              icon: const Icon(Icons.alarm),
            ),
          ],
        ),
        body: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
            switch (state.productListState) {
              case RequestState.LOADED:
                return ListView.separated(
                  itemCount: state.products.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      thickness: 1,
                      indent: 70.0,
                      endIndent: 20.0,
                    );
                  },
                  itemBuilder: ((BuildContext context, int index) {
                    ProductModel product = state.products[index];
                    return ProductTile(
                      product: product,
                      onTap: () {
                        context.router
                            .push(ProductDetailsRoute(product: product));
                      },
                    );
                  }),
                );
              case RequestState.ERROR:
                return Center(
                  child: Text(state.errorMessage),
                );
              default:
                return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
