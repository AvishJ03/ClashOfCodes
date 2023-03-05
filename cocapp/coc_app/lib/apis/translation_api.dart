import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class TranslationAPi {
  static Future<String?> translateText(String recognizedText) async {
    try {
      final langIdentifier = LanguageIdentifier(confidenceThreshold: 0.5);
      final lanCode = await langIdentifier.identifyLanguage(recognizedText);
      langIdentifier.close();
      final translate = OnDeviceTranslator(
          sourceLanguage: TranslateLanguage.values
              .firstWhere((element) => element.bcpCode == lanCode),
          targetLanguage: TranslateLanguage.english);
      final translatedText = translate.translateText(recognizedText);
      translate.close();
      return translatedText;
    } catch (e) {
      return null;
    }
  }
}
