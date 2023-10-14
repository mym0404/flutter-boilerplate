import '../../../export.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.child,
    this.bottomNavigationBar,
    this.appBar,
    this.drawer,
    this.resizeToAvoidBottomInset = true,
    this.fab,
  }) : super(key: key);

  final Widget child;
  final Widget? bottomNavigationBar, drawer, fab;
  final PreferredSizeWidget? appBar;
  final bool resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: bottomNavigationBar,
      appBar: appBar,
      drawer: drawer,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButton: fab,
    );
  }
}
