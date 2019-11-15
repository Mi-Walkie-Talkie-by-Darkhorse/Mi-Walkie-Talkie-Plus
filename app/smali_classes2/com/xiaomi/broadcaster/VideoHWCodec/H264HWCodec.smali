.class public Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;
.super Ljava/lang/Object;
.source "H264HWCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H264HWCodec"


# instance fields
.field private decoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

.field private encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-direct {v0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    new-instance v0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

    invoke-direct {v0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->decoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

    return-void
.end method


# virtual methods
.method public decodeFrameGetPicture(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->decoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->decodeFrameGetPicture(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Z

    move-result v0

    return v0
.end method

.method public decodeFrameInputStream(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->decoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->decodeFrameInputStream(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Z

    move-result v0

    return v0
.end method

.method public decoderRelease()V
    .locals 2

    const-string v0, "H264HWCodec"

    const-string v1, "release decoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->decoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

    invoke-virtual {v0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->release()V

    return-void
.end method

.method public encodeFrameInput(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->encodeFrameInput(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;Z)Z

    move-result v0

    return v0
.end method

.method public encodeFrameOutput(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->encodeFrameOutput(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)I

    move-result v0

    return v0
.end method

.method public encoderRelease()V
    .locals 2

    const-string v0, "H264HWCodec"

    const-string v1, "release encoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->release()V

    return-void
.end method

.method public encoderReset()V
    .locals 2

    const-string v0, "H264HWCodec"

    const-string v1, "encoder reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->reset()V

    return-void
.end method

.method public initDecoder(IIII)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "H264HWCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init decoder with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->decoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Decoder;->initDecoder(IIII)Z

    move-result v0

    return v0
.end method

.method public initEncoder(IIII)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "H264HWCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init encoder with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " framerate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->initEncoder(IIII)Z

    move-result v0

    return v0
.end method

.method public isSemiPlanarSupport()Z
    .locals 2

    const-string v0, "H264HWCodec"

    const-string v1, " isSemiPlanarSupport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->isSemiPlanarSupport()Z

    move-result v0

    return v0
.end method

.method public setBitrate(I)V
    .locals 3

    const-string v0, "H264HWCodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set encoder bitrate with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;->encoder:Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;->setBitrate(I)V

    return-void
.end method
