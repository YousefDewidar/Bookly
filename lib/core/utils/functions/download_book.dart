  // import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> downloadBook({required BookModel book, required context}) async {
    if (book.accessInfo!.pdf!.isAvailable ?? false) {
      final Uri url = Uri.parse(book.accessInfo!.pdf!.acsTokenLink ?? '');
      await launchUrl(url);
    } else {
      // AwesomeDialog(
      //       context: context,
      //       dialogType: DialogType.error,
      //       animType: AnimType.bottomSlide,
      //       title: 'Not available',
      //       autoDismiss: true,
      //       autoHide: const Duration(seconds: 3)
      //       ).show();
    }
  }