.class public Lcom/xiaomi/utils/AudioConvert;
.super Ljava/lang/Object;
.source "AudioConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAudioFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/xiaomi/utils/AudioConvert;->convertAudioFileJni(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native convertAudioFileJni(Ljava/lang/String;Ljava/lang/String;)Z
.end method
