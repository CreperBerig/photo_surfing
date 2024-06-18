import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_surfing/blocs/photo/photo_bloc.dart';
import 'package:photo_surfing/models/models.dart';
import 'package:photo_surfing/repositores/reposytories.dart';
import 'package:photo_surfing/widgets/widgets.dart';

class AllPhotoScreen extends StatelessWidget {
  const AllPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomSearchBar(),
        ),
        Expanded(
          child: BlocProvider(
            create: (context) => PhotoBloc(
              PhotoRepository(
                dio: Dio(),
                apiUrl:
                    "https://api.unsplash.com/photos/?client_id=ZBvlbSxq1qWp7UPU7bXr1q7itxLNlF87YnIqKJT5xsc",
              ),
            )..add(FetchPhotoEvent()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BlocBuilder<PhotoBloc, PhotoState>(
                builder: (context, state) {
                  if (state is PhotoLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is PhotoLoadedState) {
                    return MasonryGridView.builder(
                      itemCount: state.photos.length,
                      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        final photo = state.photos[index];
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: GestureDetector(
                            onTap: () => pushPhotoView(context, photo),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(photo.rawUrl),
                            ),
                          )
                        );
                      }
                    );
                    /*return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: state.photos.length,
                      itemBuilder: (context, index) {
                        final photo = state.photos[index];
                        return Image.network(photo.rawUrl, fit: BoxFit.cover,);
                      },
                    );*/
                  } else if (state is PhotoErrorState) {
                    return Center(child: Text(state.message));
                  } else {
                    return Center(child: Text('Somfing wrong...'));
                  }
                },
              ),
            ),
          )
        )
      ],
    );
  }

  void pushPhotoView(BuildContext context, Photo photo) {
    Navigator.of(context).pushNamed('/detail_photo_screen', arguments: photo);
  }
}