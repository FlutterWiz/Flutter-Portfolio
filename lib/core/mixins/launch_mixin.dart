import 'dart:developer' as developer;
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Future<void> launchEmail({
    required String emailAddress,
    String? emailSubject,
    String? emailBody,
  }) async {
    const constantSubject = 'About Portfolio Website...';
    const constantBody = 'Hello...';

    try {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: emailAddress,
        query: _encodeQueryParameters(
          {
            'subject': emailSubject ?? constantSubject,
            'body': emailBody ?? constantBody,
          },
        ),
      );

      if (!await launchUrl(emailLaunchUri)) {
        throw Exception('Could not launch email to: $emailAddress');
      }
    } catch (e) {
      developer.log('Error launching email: $e');
    }
  }

  Future<void> launchWebsite({required websitePath}) async {
    try {
      final Uri url = Uri.parse(websitePath);
      final bool launched =
          await launchUrl(url, mode: LaunchMode.externalApplication, webOnlyWindowName: '_blank');

      if (!launched) {
        developer.log('Could not launch website: $websitePath');
      }
    } on FormatException catch (e) {
      developer.log('Invalid URL format: $websitePath - ${e.message}');
    } catch (e) {
      developer.log('Error launching website: $e');
    }
  }
}
