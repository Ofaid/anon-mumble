# ==========================================
# ATURAN KEEP UNTUK MENCEGAH FILE HILANG
# ==========================================

# 1. Keep SEMUA kode SpongyCastle (Crypto & Certificates)
# Ini mencegah error javax.naming & missing class tadi
-keep class org.spongycastle.** { *; }
-keep class com.madgag.spongycastle.** { *; }
-dontwarn org.spongycastle.**
-dontwarn javax.naming.**

# 2. Keep SEMUA kode Tor & NetCipher (Anonymity)
-keep class info.guardianproject.** { *; }
-keep class net.freehaven.tor.control.** { *; }
-keep class org.torproject.** { *; }
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# 3. Keep Protobuf (Humla Communication Protocol)
# Kalau ini hilang, aplikasi gak bisa connect ke server Mumble
-keep class se.lublin.humla.protobuf.** { *; }
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite { *; }
-keepclassmembers class * extends com.google.protobuf.AbstractMessageLite { *; }

# 4. Keep Semua Class di Package Aplikasi Utama
# Mencegah R8 menghapus Activity/Fragment kamu sendiri
-keep class se.lublin.mumla.** { *; }
-keep class gratis.anon.mumble.** { *; }

# 5. Keep JNI Methods (Native Code untuk Audio/Opus)
# Kalau ini hilang, suara mic/speaker bakal mati total
-keepclasseswithmembernames class * {
    native <methods>;
}

# 6. Keep Enum & Serializable (Mencegah crash saat save data)
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
}