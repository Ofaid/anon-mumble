# KEEP SEMUA KODE APLIKASI UTAMA (Biar aman total)
-keep class gratis.anon.mumble.** { *; }
-keep class se.lublin.mumla.** { *; }

# KEEP SEMUA LIBRARY NATIVE & JNI
-keepclasseswithmembernames class * {
    native <methods>;
}
-keep class * {
    native <methods>;
}

# KEEP TOR & SPONGYCASTLE TOTAL
-keep class info.guardianproject.** { *; }
-keep class org.spongycastle.** { *; }
-keep class com.madgag.spongycastle.** { *; }
-dontwarn org.spongycastle.**
-dontwarn javax.naming.**

# KEEP PROTOBUF (HUMLA)
-keep class se.lublin.humla.protobuf.** { *; }
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite { *; }