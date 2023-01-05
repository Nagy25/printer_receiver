import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenNotifier extends StateNotifier<int> {
  static final provider = StateNotifierProvider<HomeScreenNotifier, int>(
    (ref) => HomeScreenNotifier._(),
  );
  HomeScreenNotifier._() : super(0);

  @override
  set state(int value) {
    super.state = value;
  }
}
