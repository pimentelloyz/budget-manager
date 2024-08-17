import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../data/supabase/supabase.dart';
import '../../../infra/supabase/supabase_adapter.dart';

SupabaseDbClient makeSupabaseDbClient() => SupabaseAdapter(
      client: SupabaseClient(
        'https://lkttzmirxsqwgiagepyt.supabase.co',
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxrdHR6bWlyeHNxd2dpYWdlcHl0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE1NzUyODQsImV4cCI6MjAzNzE1MTI4NH0.xhpsGUJbIQU4kFKb0E1Q-VurF1Wzl4UwZAivvqYQc6Y',
      ),
    );
