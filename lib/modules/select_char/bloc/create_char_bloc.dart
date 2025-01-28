import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_char_state.dart';

class CreateCharBloc extends Cubit<CreateCharState> {
  CreateCharBloc() : super(CreateCharInitial());
}
