# Keep SpongyCastle
-keep class org.spongycastle.** { *; }
-keep class com.madgag.spongycastle.** { *; }

# Keep Tor & NetCipher
-keep class info.guardianproject.** { *; }
-keep class net.freehaven.tor.control.** { *; }
-keep class org.torproject.** { *; }

# Keep Protobuf (Humla uses it)
-keep class se.lublin.humla.protobuf.** { *; }
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite { *; }

# Keep Java Native Interface (JNI) methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep Serializable classes (fix warning [serial] non-transient instance field)
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
}