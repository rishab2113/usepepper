import 'package:usepepper/models/app_state.dart';
import 'package:usepepper/reducers/update_reducer.dart';
import 'package:usepepper/reducers/navigation_reducer.dart';

AppState appReducer(state, action) {
  return new AppState(
      isLoading: false,
      currentUser: updateReducer(state.currentUser, action),
      navigationState: navigationReducer(state.navigationState, action));
}
