import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://pneocmbbapohoglkieka.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBuZW9jbWJiYXBvaG9nbGtpZWthIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ0MzYyMDgsImV4cCI6MjAxMDAxMjIwOH0.nBck0ZzfEu_RdbDjYM1DICCPfbJVXXBsa4uj14wWO40';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
