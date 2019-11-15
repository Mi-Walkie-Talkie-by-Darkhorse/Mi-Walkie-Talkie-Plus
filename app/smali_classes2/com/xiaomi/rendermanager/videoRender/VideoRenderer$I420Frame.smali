.class public Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I420Frame"
.end annotation


# instance fields
.field public backCamera:Z

.field public height:I

.field public localPreview:Z

.field public offset:F

.field public rotateAngle:I

.field public sharpCoff:F

.field public sharpStrength:F

.field public slope:F

.field public sourceCoff:F

.field public width:I

.field public final yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(IIZZ[I[Ljava/nio/ByteBuffer;FFFFFI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iput p2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iput-object p5, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iput-boolean p3, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    iput-boolean p4, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    iput p8, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    iput p7, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput p9, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iput p10, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iput p11, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iput p12, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    if-nez p6, :cond_0

    const/4 v0, 0x3

    new-array p6, v0, [Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, p5, v1

    mul-int/2addr v1, p2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, p6, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, p5, v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, p6, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    aget v1, p5, v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, p6, v0

    :cond_0
    iput-object p6, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iget-object v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iget v1, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched dimensions!  Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iget v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    iget-object v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    iget-object v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    iget-object v0, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->copyPlane(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
