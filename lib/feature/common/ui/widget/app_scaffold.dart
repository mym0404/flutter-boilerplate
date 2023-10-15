import '../../../../export.dart';
import '../../../../service/layout/layout_manager.dart';
import '../../widget/app_scroll_configuration.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    di<LayoutManager>().onSizeChanged(mq.size);

    return DefaultTextStyle(
      style: TS.displayLarge,
      child: ScrollConfiguration(
        behavior: AppScrollBehavior(),
        child: child,
      ),
    );
  }
}
