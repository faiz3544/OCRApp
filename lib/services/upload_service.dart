import 'package:file_picker/file_picker.dart';

class UploadService {
  Future<String?> pickDocument() async {
    try {
      // Let the user pick a file
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'jpg', 'png'],
      );

      if (result != null && result.files.isNotEmpty) {
        // Get the file path
        String filePath = result.files.single.path!;
        return filePath;
      } else {
        // User canceled the picker
        return null;
      }
    } catch (e) {
      print('Error picking document: $e');
      return null;
    }
  }
}
