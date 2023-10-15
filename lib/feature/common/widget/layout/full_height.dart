import '../../../../export.dart';

class FullHeight extends StatelessWidget {
  const FullHeight({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: double.infinity, child: child);
  }
}
