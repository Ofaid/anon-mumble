# ✅ FIX: Abaikan missing class javax.naming (LDAP) yang tidak ada di Android
-dontwarn javax.naming.**
-dontwarn javax.naming.directory.**
-dontwarn org.spongycastle.x509.util.LDAPStoreHelper
-dontwarn org.spongycastle.jce.provider.X509LDAPCertStoreSpi

# Keep SpongyCastle agar tidak dihapus/dirusak R8
-keep class org.spongycastle.** { *; }
-keep class com.madgag.spongycastle.** { *; }

# Keep Tor & NetCipher
-keep class info.guardianproject.** { *; }
-keep class net.freehaven.tor.control.** { *; }

# Keep Protobuf (Humla uses it)
-keep class se.lublin.humla.protobuf.** { *; }
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite { *; }