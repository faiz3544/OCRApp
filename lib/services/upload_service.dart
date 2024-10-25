import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class UploadService {
  // Function to pick a document (PDF, JPG, etc.)
  Future<String?> pickDocument() async {
    try {
      // Let the user pick a file
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpg', 'png', 'doc', 'docx'],
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

  // Function to upload file to S3 using a pre-signed URL
  Future<String?> uploadToS3(String filePath, String presignedUrl) async {
    try {
      // Read the file as bytes
      var fileBytes = await File(filePath).readAsBytes();

      // Make PUT request to upload file using pre-signed URL
      var response = await http.put(
        Uri.parse(presignedUrl),
        body: fileBytes,
      );

      if (response.statusCode == 200) {
        print('File uploaded successfully');
        return 'Success';
      } else {
        print('Failed to upload file: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error uploading file: $e');
      return null;
    }
  }

  // Function to get a pre-signed URL from the backend (to be implemented)
  Future<String?> getPresignedUrl(String fileName) async {
    // You need to implement this based on how your backend provides pre-signed URLs.
    // This could involve calling an API endpoint to get the URL.
    return null;
  }
}
