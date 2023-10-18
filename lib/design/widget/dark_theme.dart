import '../../export.dart';

class DarkTheme extends StatelessWidget {
  const DarkTheme({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.instance.createTheme(Brightness.dark),
      child: child,
    );
  }
}
