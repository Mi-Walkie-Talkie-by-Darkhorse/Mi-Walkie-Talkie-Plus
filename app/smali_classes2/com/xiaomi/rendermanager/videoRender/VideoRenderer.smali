.class public Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;,
        Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$I420Frame;
    }
.end annotation


# instance fields
.field private final callbacks:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;

.field final nativeVideoRenderer:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->nativeVideoRenderer:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->callbacks:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->nativeWrapVideoRenderer(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->nativeVideoRenderer:J

    iput-object p1, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->callbacks:Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;

    return-void
.end method

.method public static createGui(II)Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;
    .locals 4

    invoke-static {p0, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->nativeCreateGuiVideoRenderer(II)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;-><init>(J)V

    goto :goto_0
.end method

.method private static native free(J)V
.end method

.method private static native nativeCreateGuiVideoRenderer(II)J
.end method

.method private static native nativeWrapVideoRenderer(Lcom/xiaomi/rendermanager/videoRender/VideoRenderer$Callbacks;)J
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1}, Lcom/xiaomi/rendermanager/videoRender/VideoRenderer;->free(J)V

    return-void
.end method
