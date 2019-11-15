.class public Lcom/xiaomi/channel/common/audio/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field static final AUDIO_MODE_VOICE_CALL:[Ljava/lang/String;

.field private static final FILENAME_FORMAT:Ljava/lang/String; = "%s_%d.%s"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MI NOTE Pro"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/channel/common/audio/CommonUtils;->AUDIO_MODE_VOICE_CALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioModeByModel()I
    .locals 6

    const/4 v0, 0x0

    sget-object v2, Lcom/xiaomi/channel/common/audio/CommonUtils;->AUDIO_MODE_VOICE_CALL:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const-string v0, ""

    if-lez v3, :cond_1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    :cond_1
    move v1, v2

    :goto_1
    const-string v3, "%s_%d.%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAudioVoiceCallDisabled()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isChineseLocale(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldAvoidProximitySensor()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "MB525"

    aput-object v2, v3, v1

    const-string v2, "ME525"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "ME525+"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "ME722"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "ME811"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "MotoA953"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "HS-U8"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "HS-E910"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "S8600"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "EG900"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "HS-EG900"

    aput-object v4, v3, v2

    new-array v4, v0, [Ljava/lang/String;

    const-string v2, "moto"

    aput-object v2, v4, v1

    array-length v5, v3

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v3, v2

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "HS-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v3, v4

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v5, v4, v2

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
