.class public Lcom/xiaomi/channel/common/audio/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# static fields
.field public static final AUDIO_FORMAT:I

.field public static final CHANNEL:I

.field public static DECODE_RESULT_FAILED:I = 0x0

.field public static DECODE_RESULT_SUCCESS:I = 0x0

.field public static final DEFAULT_QUALITY:I = 0x4

.field public static final MIDDLE_LEVEL_QUALITY:I = 0x8

.field public static sInitialized:Z


# instance fields
.field private final mQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z

    sput v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->CHANNEL:I

    const/16 v0, 0x10

    sput v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->AUDIO_FORMAT:I

    sput v1, Lcom/xiaomi/channel/common/audio/AudioCodec;->DECODE_RESULT_SUCCESS:I

    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->DECODE_RESULT_FAILED:I

    :try_start_0
    const-string v0, "MLCodec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/channel/common/audio/AudioCodec;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the quality for the codec is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/xiaomi/channel/common/audio/AudioCodec;->mQuality:I

    return-void
.end method


# virtual methods
.method public native decode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native encode([BIZ)I
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/channel/common/audio/AudioCodec;->mQuality:I

    return v0
.end method

.method public native nativeDelete()I
.end method

.method public native prepare(Ljava/lang/String;IIII)I
.end method
