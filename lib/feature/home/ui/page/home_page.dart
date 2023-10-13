import '../../../../design/color/color_settings.dart';
import '../../../../export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _toggleTheme() {
    di<ColorSettings>().toggleDarkMode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Welcome'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [IconButton(onPressed: () {}, icon: Icon(Icons.account_box_sharp))],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleTheme,
        tooltip: 'Toggle Theme',
        child: const Icon(Icons.shield_moon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Flutter Boilerplate',
            ),
          ],
        ),
      ),
    );
  }
}
