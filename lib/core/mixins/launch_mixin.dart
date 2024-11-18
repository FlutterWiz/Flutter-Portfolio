import 'dart:developer' as developer;
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Future<void> launchUrlInWeb({
    bool? isEmail,
    String? emailPath,
    String? websitePath,
    bool? isWebsite,
    String? emailSubject,
    String? emailBody,
  }) async {
    try {
      if (isEmail == true && emailPath != null) {
        await _launchEmail(
          emailPath: emailPath,
          subject: emailSubject,
          body: emailBody,
        );
      } else if (isWebsite == true && websitePath != null) {
        await _launchWebsite(websitePath);
      } else {
        throw Exception('Invalid parameters provided to launchUrlInWeb');
      }
    } catch (e) {
      developer.log('Error launching URL: $e');
      rethrow;
    }
  }

  Future<void> _launchEmail({
    required String emailPath,
    String? subject,
    String? body,
  }) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailPath,
      query: _encodeQueryParameters({
        'subject': subject ?? 'About Portfolio Website...',
        'body': body ?? "Hello...",
      }),
    );

    if (!await launchUrl(emailLaunchUri)) {
      throw Exception('Could not launch email to: $emailPath');
    }
  }

  Future<void> _launchWebsite(String websitePath) async {
    try {
      final Uri url = Uri.parse(websitePath);
      final bool launched = await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
        webOnlyWindowName: '_blank',
      );

      if (!launched) {
        throw Exception('Could not launch website: $websitePath');
      }
    } on FormatException catch (e) {
      throw Exception('Invalid URL format: $websitePath - ${e.message}');
    }
  }
}
