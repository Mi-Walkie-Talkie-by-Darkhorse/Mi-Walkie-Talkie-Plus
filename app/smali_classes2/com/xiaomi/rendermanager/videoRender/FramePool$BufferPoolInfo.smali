.class Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;
.super Ljava/lang/Object;
.source "FramePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/rendermanager/videoRender/FramePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferPoolInfo"
.end annotation


# instance fields
.field freeFrameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/rendermanager/videoRender/FramePool;

.field totalAllocateCount:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/rendermanager/videoRender/FramePool;)V
    .locals 14

    const/16 v1, 0x800

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->this$0:Lcom/xiaomi/rendermanager/videoRender/FramePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->totalAllocateCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move v13, v3

    :goto_0
    iget v0, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->totalAllocateCount:I

    if-ge v13, v0, :cond_0

    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;

    const/4 v6, 0x0

    move v2, v1

    move v4, v3

    move v9, v8

    move v10, v7

    move v11, v7

    move v12, v3

    invoke-direct/range {v0 .. v12}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;-><init>(IIZZ[I[Ljava/nio/ByteBuffer;FFFFFI)V

    iget-object v2, p0, Lcom/xiaomi/rendermanager/videoRender/FramePool$BufferPoolInfo;->freeFrameList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x800
        0x400
        0x400
    .end array-data
.end method
