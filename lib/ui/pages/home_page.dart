import 'package:fluent_ui/fluent_ui.dart';
import 'package:printer_receiver/ui/widgets/page_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
      child: Placeholder(
        child: Text('home'),
      ),
    );
  }
}
