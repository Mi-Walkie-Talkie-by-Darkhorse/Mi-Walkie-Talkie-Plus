.class public Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;
.super Ljava/lang/Object;
.source "H264Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;
    }
.end annotation


# static fields
.field private static final AVC_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "H264Encoder"

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static isQcomPlatform:Z

.field private static final supportedColorList:[I

.field private static final supportedHwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private Constructed:Z

.field counter:I

.field private dequedBufferIndex:I

.field frameCounter:I

.field private hasDequedBuffer:Z

.field private lastSize:I

.field private lastTimeStamp:J

.field m_height:I

.field m_info:[B

.field m_width:I

.field maxHeight:I

.field maxWidth:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private supportColorFormat:I

.field tag:Ljava/lang/String;

.field private yuv420:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    sput-boolean v2, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->isQcomPlatform:Z

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportedColorList:[I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "OMX.qcom."

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "OMX.Nvidia."

    aput-object v2, v0, v1

    const-string v1, "OMX.IMG."

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "OMX.Exynos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OMX.MTK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "OMX.hantro"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OMX.Intel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x15
        0x13
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_info:[B

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->counter:I

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->frameCounter:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxWidth:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxHeight:I

    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->tag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->Constructed:Z

    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->hasDequedBuffer:Z

    iput v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->dequedBufferIndex:I

    iput v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastTimeStamp:J

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportColorFormat:I

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxWidth:I

    iget v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->yuv420:[B

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static findAvcHwEncoder()Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;
    .locals 16

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "H264Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk version is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    const-string v8, "H264Encoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "codec name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " company:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v6, v1, :cond_0

    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_4
    if-ge v1, v5, :cond_d

    aget-object v7, v4, v1

    const-string v8, "H264Encoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "codec name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "video/avc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_5
    if-eqz v5, :cond_5

    const-string v1, "H264Encoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found candidate encoder "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "video/avc"

    invoke-virtual {v3, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    iget-object v3, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    move v1, v2

    :goto_6
    if-ge v1, v4, :cond_8

    aget v8, v3, v1

    const-string v9, "H264Encoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   Color: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->isQcomPlatform:Z

    sget-object v8, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    array-length v9, v8

    move v4, v2

    :goto_7
    if-ge v4, v9, :cond_5

    aget-object v1, v8, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7

    :cond_a
    sget-object v10, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportedColorList:[I

    array-length v11, v10

    move v3, v2

    :goto_8
    if-ge v3, v11, :cond_9

    aget v12, v10, v3

    iget-object v13, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v13

    move v1, v2

    :goto_9
    if-ge v1, v14, :cond_c

    aget v15, v13, v1

    if-ne v15, v12, :cond_b

    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found target encoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Color: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;

    invoke-direct {v1, v5, v15}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    :catch_0
    move-exception v1

    const-string v2, "H264Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find exceptin :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object v5, v0

    goto/16 :goto_5
.end method

.method public static intToByteArray(I[B)V
    .locals 2

    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static isPlatformSupported()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->findAvcHwEncoder()Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public encodeFrameInput(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;Z)Z
    .locals 10

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "H264Encoder"

    const-string v1, "force a key frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-eqz p2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request-sync"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->counter:I

    if-gez v1, :cond_2

    move v0, v7

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->frameCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->frameCounter:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget v3, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    iget-wide v4, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->timeStamp:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "H264Encoder"

    const-string v2, "find exception at frameInput:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    goto :goto_0
.end method

.method public encodeFrameOutput(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)I
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_width:I

    iget v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_height:I

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v6, v0, [B

    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->hasDequedBuffer:Z

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->dequedBufferIndex:I

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastSize:I

    iget-wide v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastTimeStamp:J

    :goto_0
    if-ltz v3, :cond_3

    iget-object v9, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    new-array v0, v0, [B

    iget v10, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->frameCounter:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->frameCounter:I

    aget-object v9, v9, v3

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v9, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    iget-object v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->hasDequedBuffer:Z

    iput v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->dequedBufferIndex:I

    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastSize:I

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastTimeStamp:J

    :goto_1
    iget-object v7, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/16 v8, 0x8

    invoke-virtual {v7, v8, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_2
    iget-object v3, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    const/4 v8, 0x4

    aget-byte v8, v6, v8

    and-int/lit8 v8, v8, 0x1f

    invoke-virtual {v3, v7, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    aget-byte v3, v6, v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v7, 0x5

    if-lt v3, v7, :cond_4

    const/16 v7, 0x8

    if-gt v3, v7, :cond_4

    :goto_3
    iget-object v3, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/16 v7, 0xc

    invoke-virtual {v3, v7, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    const-string v2, "H264Encoder"

    const-string v3, "h264 add frame header  cdr flag"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_0
    if-lez v0, :cond_5

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iput v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    :goto_4
    return v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v7, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->hasDequedBuffer:Z

    const/4 v7, -0x1

    iput v7, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->dequedBufferIndex:I

    const/4 v7, -0x1

    iput v7, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastSize:I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "H264Encoder"

    const-string v3, "find exception at encode frame outputFrame:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_4

    :cond_3
    :try_start_1
    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    const/4 v7, -0x1

    invoke-virtual {v0, v3, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->hasDequedBuffer:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->dequedBufferIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastSize:I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastTimeStamp:J

    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    iput v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public initEncoder(IIII)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "H264Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H264 encoder creat width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "framerate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bitrate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "this:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_width:I

    iput p2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_height:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_info:[B

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_width:I

    iget v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxWidth:I

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxHeight:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_0

    const-string v2, "H264Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H264 encoder realloc output buffer with:  width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_width:I

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxWidth:I

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_height:I

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxHeight:I

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxWidth:I

    iget v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->maxHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->yuv420:[B

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->hasDequedBuffer:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->dequedBufferIndex:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastSize:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->lastTimeStamp:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->findAvcHwEncoder()Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "H264Encoder"

    const-string v2, "Can not find HW AVC encoder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v3, v2, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v3, :cond_2

    const-string v1, "H264Encoder"

    const-string v2, "creatByCodecName failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "H264Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find exception at init encoder :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "video/avc"

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "bitrate"

    invoke-virtual {v3, v4, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    invoke-virtual {v3, v4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    sget-boolean v4, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->isQcomPlatform:Z

    if-eqz v4, :cond_3

    const-string v4, "profile"

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    const-string v4, "level"

    const v5, 0x8000

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    const-string v4, "bitrate-mode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_2
    iget v4, v2, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;->colorFormat:I

    iput v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportColorFormat:I

    const-string v4, "color-format"

    iget v5, v2, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;->colorFormat:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "i-frame-interval"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->Constructed:Z

    const-string v3, "H264Encoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avc encoder creat done, isSemiPlanar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;->colorFormat:I

    const/16 v5, 0x15

    if-ne v2, v5, :cond_6

    move v2, v1

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const-string v4, "level"

    const/16 v5, 0x800

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string v4, "bitrate-mode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_3
.end method

.method public isSemiPlanarSupport()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->supportColorFormat:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->Constructed:Z

    const-string v0, "H264Encoder"

    const-string v1, "avc encoder release begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->m_info:[B

    const-string v0, "H264Encoder"

    const-string v1, "avc encoder release done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find exception at release encoder :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->Constructed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    const-string v0, "H264Encoder"

    const-string v1, "avc encoder reset done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find exception at reset encoder :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBitrate(I)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->Constructed:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const-string v0, "H264Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kbps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "H264Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find exception at set encoder bitrate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
