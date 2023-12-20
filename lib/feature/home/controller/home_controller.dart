import 'package:animation/feature/home/screen/animated_default_text_style_screen.dart';
import 'package:animation/feature/home/screen/animated_switcher_screen.dart';
import 'package:get/get.dart';
import '../screen/animated_align_screen.dart';
import '../screen/animated_builder_screen.dart';
import '../screen/animated_container_screen.dart';
import '../screen/animated_cross_fade_screen.dart';
import '../screen/animated_decorated_box_transition_screen.dart';
import '../screen/animated_fractionally_sizedbox_screen.dart';
import '../screen/animated_grid_screen.dart';
import '../screen/animated_list_screen.dart';
import '../screen/animated_modal_barrier_screen.dart';
import '../screen/animated_opacity_screen.dart';
import '../screen/animated_physical_screen.dart';
import '../screen/animated_positioned_screen.dart';
import '../screen/animated_size_screen.dart';
import '../screen/animated_widget_screen.dart';
import '../screen/fade_transition_screen.dart';
import '../screen/hero_screen.dart';
import '../screen/positioned_transition_screen.dart';
import '../screen/rotation_transition_screen.dart';
import '../screen/scale_transition_screen.dart';
import '../screen/size_transition_screen.dart';
import '../screen/slide_transition_screen.dart';

class HomeController extends GetxController {
  int currentIndex = 0;

  List<String> items = [
    'Animated Align',
    'Animated Builder',
    'Animated Container',
    'Animated Cross Fade',
    'Animated Default TextStyle',
    'Animated Opacity',
    'Animated Physical',
    'Animated Positioned',
    'Animated Size',
    'Animated Widget',
    'Animated Decorated Box Transition',
    'Fade Transition',
    'Hero ',
    'Positioned Transition',
    'Rotation Transition',
    'Scale Transition',
    'Size Transition',
    'Slide Transition',
    'Animated List',
    'Animated Modal Barrier',
    'Animated Fractionally SizedBox',
    'Animated Grid',
    'Animated Switcher',
  ];

  final tabs = [
    const AnimatedAlignScreen(),
    const AnimatedBuilderScreen(),
    const AnimatedContainerScreen(),
    const AnimatedCrossFadeScreen(),
    const AnimatedDefaultTextStyleScreen(),
    const AnimatedOpacityScreen(),
    const AnimatedPhysicalModelScreen(),
    const AnimatedPositionedScreen(),
    const AnimatedSizeScreen(),
    const AnimatedWidgetScreen(),
    const AnimatedDecoratedBoxTransitionScreen(),
    const FadeTransitionScreen(),
    const HeroScreen(),
    const PositionedTransitionScreen(),
    const AnimatedRotationTransitionScreen(),
    const ScaleTransitionScreen(),
    const SizeTransitionScreen(),
    const SlideTransitionScreen(),
    const AnimatedListScreen(),
    const AnimatedModalBarrierScreen(),
    const AnimatedFractionallySizedBoxScreen(),
    const AnimatedGridScreen(),
    const  AnimatedSwitcherScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
