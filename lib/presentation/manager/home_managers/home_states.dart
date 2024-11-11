class HomeStates{}
class InitialState extends HomeStates{}
class NavigateToCarScreenDetailsState<T> extends HomeStates{
  T car;
  NavigateToCarScreenDetailsState(this.car);
}