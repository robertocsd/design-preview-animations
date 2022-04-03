import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'paywall_event.dart';
part 'paywall_state.dart';

class PaywallBloc extends Bloc<PaywallEvent, PaywallState> {
  PaywallBloc() : super(const InitialPaywallState(Model())) {
    on<ChanginEvent>((event, emit) {
      state.model.switchVale
          ? emit(SwitchValueChanged(state.model.copyWith(switchVale: false)))
          : emit(SwitchValueChanged(state.model.copyWith(switchVale: true)));
    });
  }
}
