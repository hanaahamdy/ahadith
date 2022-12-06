import 'package:audioplayers/audioplayers.dart';

abstract class DataStates{

}
class DataInitState extends DataStates{

}
class GetDataLoadingState extends DataStates{}
class GetDataSuccessState extends DataStates{}
class GetDataErrorState extends DataStates{}
class BottomNavState extends DataStates{}
class AudioPlayState extends DataStates{}
class AudioStopState extends DataStates{}
class AudioPositionState extends DataStates{}
class AudioChangeState extends DataStates{}
class SeekState extends DataStates{}