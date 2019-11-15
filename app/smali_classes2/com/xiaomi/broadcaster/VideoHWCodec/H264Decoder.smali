.class public Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;
.super Ljava/lang/Object;
.source "H264Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;
    }
.end annotation


# static fields
.field private static final AVC_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final DEQUEUE_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "H264Decoder"

.field private static final supportedColorList:[I

.field private static final supportedHwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private colorFormat:I

.field counter:I

.field private dequedBufferIndex:I

.field private getHeight:I

.field private getWidth:I

.field private hasDequedBuffer:Z

.field private height:I

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private lastSize:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private sliceHeight:I

.field private stride:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OMX.qcom."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OMX.Nvidia."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OMX.IMG."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OMX.Exynos"

    aput-object v2, v0, v1

    const-string v1, "OMX.MTK"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "OMX.hantro"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OMX.Intel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->supportedColorList:[I

    return-void

    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->lastSize:I

    iput v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    return-void
.end method

.method private checkOnMediaCodecThread()V
    .locals 0

    return-void
.end method

.method private dequeueInputBuffer()I
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->checkOnMediaCodecThread()V

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "H264Decoder"

    const-string v2, "find exception at dequeueIntputBuffer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x2

    goto :goto_0
.end method

.method private dequeueOutputBuffer(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)I
    .locals 10

    const/4 v9, -0x3

    const/4 v2, 0x0

    const/4 v1, -0x2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->checkOnMediaCodecThread()V

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    if-eq v0, v9, :cond_0

    if-ne v0, v1, :cond_3

    :cond_0
    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    const-string v0, "H264Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Format changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "width"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->width:I

    const-string v0, "height"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->width:I

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const-string v0, "H264Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "new height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "color-format"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "color-format"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->colorFormat:I

    const-string v0, "H264Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Color: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->colorFormat:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->supportedColorList:[I

    array-length v6, v5

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_8

    aget v7, v5, v0

    iget v8, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->colorFormat:I

    if-ne v8, v7, :cond_4

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    const-string v0, "H264Decoder"

    const-string v2, "Non supported color format"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_3
    :goto_4
    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "stride"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "stride"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    :cond_6
    const-string v0, "slice-height"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "slice-height"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->sliceHeight:I

    :cond_7
    const-string v0, "H264Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame stride and slice height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->sliceHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->width:I

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->sliceHeight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->sliceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v2, "H264Decoder"

    const-string v3, "find exception at dequeueOutputBuffer:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private static findH264HwDecoder()Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;
    .locals 16

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v1, v3, :cond_1

    const-string v1, "H264Decoder"

    const-string v2, "sdk version too low"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v6, v2

    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v6, v1, :cond_0

    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_a

    aget-object v7, v4, v1

    const-string v8, "video/avc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v1, "H264Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimeType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "H264Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name is  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_2

    const-string v1, "H264Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found candidate decoder "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "video/avc"

    invoke-virtual {v3, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    iget-object v3, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    move v1, v2

    :goto_4
    if-ge v1, v4, :cond_5

    aget v8, v3, v1

    const-string v9, "H264Decoder"

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

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_5
    sget-object v8, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    array-length v9, v8

    move v4, v2

    :goto_5
    if-ge v4, v9, :cond_2

    aget-object v1, v8, v4

    const-string v3, "H264Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " hwCodecPrefix :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_7
    sget-object v10, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->supportedColorList:[I

    array-length v11, v10

    move v3, v2

    :goto_6
    if-ge v3, v11, :cond_6

    aget v12, v10, v3

    iget-object v13, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v13

    move v1, v2

    :goto_7
    if-ge v1, v14, :cond_9

    aget v15, v13, v1

    if-ne v15, v12, :cond_8

    const-string v1, "H264Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found target decoder "

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;

    invoke-direct {v1, v5, v15}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :catch_0
    move-exception v1

    const-string v2, "H264Decoder"

    const-string v3, "find exception at initDecode:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    move-object v5, v0

    goto/16 :goto_3
.end method

.method private static isPlatformSupported()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->findH264HwDecoder()Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queueInputBuffer(IIJ)Z
    .locals 9

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->checkOnMediaCodecThread()V

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "H264Decoder"

    const-string v2, "find exception at queueInputBuffer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    goto :goto_0
.end method

.method private releaseOutputBuffer(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->checkOnMediaCodecThread()V

    iget-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "H264Decoder"

    const-string v3, "find exception at releaseOutputBuffer:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public decodeFrameGetPicture(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I

    move v3, v2

    :goto_0
    if-ltz v3, :cond_7

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    iget-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getWidth:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getHeight:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    iget v5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v2, v1

    :goto_1
    iget v5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getHeight:I

    if-ge v2, v5, :cond_2

    iget-object v5, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    mul-int/2addr v6, v2

    iget v7, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getWidth:I

    invoke-virtual {v5, v4, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequeueOutputBuffer(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)I

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-direct {p0, v3}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->releaseOutputBuffer(I)Z

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequeueOutputBuffer(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)I

    move-result v3

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    if-ltz v3, :cond_3

    iget v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    iput v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I

    :goto_2
    return v0

    :cond_3
    const/4 v2, -0x2

    if-ne v3, v2, :cond_6

    iget-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getWidth:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getHeight:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    iget v5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v2, v1

    :goto_3
    iget v5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getHeight:I

    if-ge v2, v5, :cond_5

    iget-object v5, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    mul-int/2addr v6, v2

    iget v7, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getWidth:I

    invoke-virtual {v5, v4, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_5
    invoke-direct {p0, v3}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->releaseOutputBuffer(I)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "H264Decoder"

    const-string v3, "find exception at decode decodeFrameGetPicture:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_2
.end method

.method public decodeFrameInputStream(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Z
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequeueInputBuffer()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->counter:I

    iget v1, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->queueInputBuffer(IIJ)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "H264Decoder"

    const-string v1, " get inputBuffer error, maybe discard a frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "H264Decoder"

    const-string v2, "find exception at decodeFrameInputStream:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initDecoder(IIII)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "H264Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoder init with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->findH264HwDecoder()Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "H264Decoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Java initDecode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Color: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;->colorFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodecThread:Ljava/lang/Thread;

    iput p1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->width:I

    iput p2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->height:I

    iput p3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getWidth:I

    iput p4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->getHeight:I

    iput p1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->stride:I

    iput p2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->sliceHeight:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->hasDequedBuffer:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->dequedBufferIndex:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->lastSize:I

    const-string v2, "video/avc"

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "color-format"

    iget v4, v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;->colorFormat:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "H264Decoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " codecName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;->codecName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v3, :cond_1

    const-string v1, "hevc decoder"

    const-string v2, "decoder init error null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "H264Decoder"

    const-string v3, "find exception at initDecode:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iget v1, v1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder$DecoderProperties;->colorFormat:I

    iput v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->colorFormat:I

    iget-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    const-string v1, "H264Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input buffers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Output buffers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "H264Decoder"

    const-string v2, "decoder init done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public release()V
    .locals 3

    :try_start_0
    const-string v0, "H264Decoder"

    const-string v1, "decoder release begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->checkOnMediaCodecThread()V

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->mediaCodecThread:Ljava/lang/Thread;

    const-string v0, "H264Decoder"

    const-string v1, "decoder release done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "H264Decoder"

    const-string v2, "find exception at release decoder:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
