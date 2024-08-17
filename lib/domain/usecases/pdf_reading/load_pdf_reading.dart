import '../../entities/pdf_reading/pdf_reading_entity.dart';

abstract class LoadPdfReading {
  Future<PdfReadingEntity> load();
}
