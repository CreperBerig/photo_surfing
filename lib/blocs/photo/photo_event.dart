part of 'photo_bloc.dart';

abstract class PhotoEvent {
  const PhotoEvent();
}

class FetchPhotoEvent extends PhotoEvent {}
