part of 'paywall_bloc.dart';

@immutable
abstract class PaywallState extends Equatable {
  final Model model;
  const PaywallState(this.model);

  @override
  List<Object> get props => [model];
}

class InitialPaywallState extends PaywallState {
  const InitialPaywallState(Model model) : super(model);
}

class FreeTryalState extends PaywallState {
  const FreeTryalState(Model model) : super(model);
}

class PayingWallState extends PaywallState {
  const PayingWallState(Model model) : super(model);
}

class SwitchValueChanged extends PaywallState {
  const SwitchValueChanged(Model model) : super(model);
}

class Model extends Equatable {
  final bool switchVale;
  const Model({
    this.switchVale = false,
  });

  Model copyWith({String? password, bool? switchVale}) => Model(
        switchVale: switchVale ?? this.switchVale,
      );

  @override
  List<Object?> get props => [switchVale];
}
