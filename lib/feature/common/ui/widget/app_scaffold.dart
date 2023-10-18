import '../../../../export.dart';
import '../../../../service/layout/layout_manager.dart';
import '../../widget/app_scroll_configuration.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.child,
    this.isUsageSubContainer = false,
  }) : super(key: key);

  final Widget child;
  final bool isUsageSubContainer;

  const AppScaffold.subContainer({
    Key? key,
    required Widget child,
  }) : this(key: key, child: child, isUsageSubContainer: true);

  @override
  Widget build(BuildContext context) {
    if (!isUsageSubContainer) {
      var mq = MediaQuery.of(context);
      di<LayoutManager>().onSizeChanged(
        size: mq.size,
        padding: mq.padding,
        viewPadding: mq.viewPadding,
        viewInsets: mq.viewInsets,
      );
    }

    return DefaultTextStyle(
      style: TS.bodyMedium,
      child: ScrollConfiguration(
        behavior: AppScrollBehavior(),
        child: child,
      ),
    );
  }
}
