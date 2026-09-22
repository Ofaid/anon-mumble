# KEEP SEMUA FILE ASLI LIBRARY PENTING
-keep class org.spongycastle.** { *; }
-keep class com.madgag.spongycastle.** { *; }
-keep class info.guardianproject.** { *; }
-keep class net.freehaven.tor.control.** { *; }
-keep class se.lublin.humla.protobuf.** { *; }
-keep class se.lublin.humla.** { *; }
-keep class gratis.anon.mumble.** { *; }
-keep class se.lublin.mumla.** { *; }

# JANGAN BUANG METHOD NATIVE (.so)
-keepclasseswithmembernames class * { native <methods>; }

# ABaikan warning library desktop (BIAR FILE ASLINYA TETAP ADA DI APK)
-dontwarn org.apache.maven.**
-dontwarn org.joda.time.**
-dontwarn javax.naming.**