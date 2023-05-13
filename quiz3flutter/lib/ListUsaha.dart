import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Usaha.dart';
import 'ProviderUsaha.dart';

class ListUsaha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProviderUsaha, List<Usaha>>(
      builder: (context, umkm) {
        return ListView.builder(
          itemCount: umkm.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(umkm[index].namaumkm),
                  Text(umkm[index].jenisumkm),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
