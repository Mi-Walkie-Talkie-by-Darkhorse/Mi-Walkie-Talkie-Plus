.class public Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;
.super Ljava/lang/Object;
.source "H264HWCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H264I420Frame"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public height:I

.field public final info:Ljava/nio/ByteBuffer;

.field public size:I

.field public timeStamp:J

.field public width:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->width:I

    iput p2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->height:I

    iput p4, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    iput-object p3, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->info:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->timeStamp:J

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;)Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    iget v1, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->width:I

    iget v1, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->height:I

    iget v1, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->height:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched dimensions!  Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->timeStamp:J

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->timeStamp:J

    iget-object v0, p1, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264HWCodec$H264I420Frame;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
