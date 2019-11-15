.class Lcom/xiaomi/rendermanager/videoRender/FramePool;
.super Ljava/lang/Object;
.source "FramePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;
    }
.end annotation


# static fields
.field private static final MAX_DIMENSION:I = 0x800

.field private static final TAG:Ljava/lang/String; = "FramePool"

.field private static frameCount:I


# instance fields
.field private poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;-><init>(Lcom/xiaomi/rendermanager/videoRender/FramePool;)V

    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    return-void
.end method

.method private static summarizeFrameDimensions(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)J
    .locals 6

    const-wide/16 v4, 0x800

    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static validateDimensions(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x800

    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    if-gt v2, v4, :cond_0

    iget v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v2, v2, v1

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    aget v2, v2, v0

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-gt v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFrameSize()I
    .locals 1

    sget v0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    return v0
.end method

.method public returnFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected frame dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    iget-object v0, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public takeFrame(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
    .locals 6

    const/16 v3, 0x800

    iget-object v1, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    iget-object v0, v0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolution is out of boundary, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    iget-boolean v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    iput-boolean v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->localPreview:Z

    iget-boolean v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    iput-boolean v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->backCamera:Z

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    iget-object v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iput-object v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->offset:F

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->slope:F

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sourceCoff:F

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpCoff:F

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->sharpStrength:F

    iget v2, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    iput v2, v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->rotateAngle:I

    sget v2, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/xiaomi/rendermanager/videoRender/FramePool;->frameCount:I

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_2
    const/4 v0, 0x0

    const-string v2, "FramePool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer pool new a frame, totalAllocateCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool;->poolInfo:Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;

    iget v4, v4, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->totalAllocateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for strid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
