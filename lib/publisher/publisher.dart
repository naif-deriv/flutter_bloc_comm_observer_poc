import 'package:bloc_comm_observer_poc/subscriber/subscriber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PublisherCubit<T> extends Cubit<T> {
  PublisherCubit(super.initialState);

  List<Subscriber> subscribers = [];

  void subscribe(Subscriber newSubscription) {
    subscribers.add(newSubscription);
  }

  void notifySubscribers(T newState) {
    for (Subscriber subscriber in subscribers) {
      subscriber.update(newState);
    }
  }

  @override
  void onChange(Change<T> change) {
    super.onChange(change);
    notifySubscribers(change.nextState);
  }
}
