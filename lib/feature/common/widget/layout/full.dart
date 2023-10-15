import '../../../../export.dart';

class Full extends StatelessWidget {
  const Full({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: child);
  }
}
