import 'package:flutter/material.dart';
import 'package:photo_surfing/models/models.dart';

class PhotoView extends StatelessWidget {
  const PhotoView({super.key});

  @override
  Widget build(BuildContext context) {
    final photo = ModalRoute.of(context)!.settings.arguments as Photo;
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Scrollbar(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      ClipRRect(child: Image.network(photo.rawUrl), borderRadius: BorderRadius.circular(16),),
                      SizedBox(height: 14,),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(child: Image.network(photo.avatar, width: 42, height: 42,), borderRadius: BorderRadius.circular(100),),
                              SizedBox(width: 14),
                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Text(photo.username, style: Theme.of(context).textTheme.labelMedium,),
                                Text(photo.countSub.toString(), style: Theme.of(context).textTheme.bodyMedium, selectionColor: Theme.of(context).colorScheme.outline,)
                              ],),
                              Spacer(),
                              Icon(Icons.favorite_border_outlined, color: Theme.of(context).colorScheme.tertiary,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 14,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description", style: Theme.of(context).textTheme.labelSmall,),
                              SizedBox(height: 5,),
                              Text(photo.altDescription, style: Theme.of(context).textTheme.bodyMedium,),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        
      ),
    );
  }
}