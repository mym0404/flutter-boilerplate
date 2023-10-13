import '../../export.dart';
import '../theme.dart';

class LightTheme extends StatelessWidget {
  const LightTheme({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.instance.createTheme(Brightness.light),
      child: child,
    );
  }
}
