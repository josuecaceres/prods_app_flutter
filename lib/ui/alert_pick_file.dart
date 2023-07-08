import 'package:flutter/material.dart';

dynamic alertPickFile(context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.grey[100],
        title: const Text(
          'Seleccione una imagen o tome una fotografía',
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  label: const Text('Cámara', style: TextStyle(color: Colors.indigo)),
                  onPressed: () => Navigator.of(context).pop(1),
                  icon: const Icon(
                    Icons.camera_alt,
                    size: 40,
                    color: Colors.indigo,
                  ),
                ),
                TextButton.icon(
                  label: const Text('Galería', style: TextStyle(color: Colors.indigo)),
                  onPressed: () => Navigator.of(context).pop(2),
                  icon: const Icon(
                    Icons.filter,
                    size: 40,
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
