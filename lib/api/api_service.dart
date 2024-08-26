import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiHeaders = {
  'Content-Type': 'application/json',
  'API-Key': dotenv.get('API_KEY', fallback: "")
};