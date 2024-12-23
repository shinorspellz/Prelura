# Firebase ProGuard rules
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**
-keepattributes *Annotation*
-keep class androidx.** { *; }
-keep class io.flutter.** { *; }
-dontwarn android.support.**
-dontwarn androidx.**