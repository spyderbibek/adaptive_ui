import 'adaptiveui_util.dart';

extension Extensions on double {
  double get h => AdaptiveUIUtil.height(this);

  double get w => AdaptiveUIUtil.width(this);

  double get sp => AdaptiveUIUtil.sp(this);
}
