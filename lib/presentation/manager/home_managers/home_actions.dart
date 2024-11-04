sealed class HomeActions{}
class NavigateToCarScreenDetailsAction<T> extends HomeActions{
  T car;
  NavigateToCarScreenDetailsAction(this.car);
}