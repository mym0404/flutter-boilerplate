import 'package:go_router/go_router.dart';

import '../../../../design/color/color_manager.dart';
import '../../../../export.dart';
import '../../../common/widget/layout/full.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _toggleTheme() {
    di<ColorManager>().toggleDarkMode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Icon(MdiIcons.heart),
            const Gap(8),
            Text('Boilerplate', style: TS.bodyLarge.medium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleTheme,
        tooltip: 'Toggle Theme',
        child: const Icon(Icons.shield_moon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      body: Full(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Welcome to Flutter Boilerplate\nThis can be your very good start point.',
                textAlign: TextAlign.center,
                style: TS.labelLarge.medium,
              ),
              const Gap(24),
              FilledButton.tonal(
                onPressed: () {
                  context.go('/detail');
                },
                child: const Text('Go Detail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
