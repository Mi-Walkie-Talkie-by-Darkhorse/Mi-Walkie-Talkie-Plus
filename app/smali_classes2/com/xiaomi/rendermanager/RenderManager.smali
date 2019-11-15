.class public Lcom/xiaomi/rendermanager/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native constructRenderManagerJni(Landroid/content/Context;)V
.end method

.method private native destructRenderManagerJni()V
.end method

.method private native getRenderJni(Ljava/lang/String;)Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;
.end method

.method private native setResolutionJni(Ljava/lang/String;II)Z
.end method


# virtual methods
.method public bindRenderWithStream(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "RenderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding render with user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "RenderManager"

    const-string v2, "bindRenderWithStream error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->bindRenderWithStream(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RenderManager"

    const-string v2, "bind render failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "RenderManager"

    const-string v1, "bind render succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructRenderManager(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "RenderManager"

    const-string v1, "construct RenderManager..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "construct error, please destroy the render manager first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaomi/rendermanager/RenderManager;->constructRenderManagerJni(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createRender(Landroid/graphics/Point;)Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;
    .locals 3

    const-string v0, "RenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating render with display size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "createRender error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;

    iget-object v1, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public destroyRender(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;)V
    .locals 2

    const-string v0, "RenderManager"

    const-string v1, "destorying render..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "destroyRender error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->destoryNativeRender()V

    const-string v0, "RenderManager"

    const-string v1, "destory render done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destructRenderManager()Z
    .locals 2

    const-string v0, "RenderManager"

    const-string v1, "destruct RenderManager..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "destruct error, please create the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/rendermanager/RenderManager;->destructRenderManagerJni()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRender(Ljava/lang/String;)Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;
    .locals 3

    const-string v0, "RenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting render for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "getRender error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/rendermanager/RenderManager;->getRenderJni(Ljava/lang/String;)Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;

    move-result-object v0

    goto :goto_0
.end method

.method public setRenderModel(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;)V
    .locals 3

    const-string v0, "RenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting render model:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "setRenderModel error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->setRenderModel(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView$RenderModel;)V

    const-string v0, "RenderManager"

    const-string v1, "set render model done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setResolution(Ljava/lang/String;II)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "RenderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set resolution for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "RenderManager"

    const-string v2, "setResolution error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/rendermanager/RenderManager;->setResolutionJni(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RenderManager"

    const-string v2, "set resolution failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "RenderManager"

    const-string v1, "set resolution suceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setShiftUp(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;FFFFF)V
    .locals 2

    const-string v0, "RenderManager"

    const-string v1, "Set the render shiftup value."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "RenderManager"

    const-string v1, "set the render shiftup error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p6}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->setShiftUpInternal(FFFFF)V

    const-string v0, "RenderManager"

    const-string v1, "Set the render shiftup succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbindRenderWithStream(Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "RenderManager"

    const-string v2, "unbinding render..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/rendermanager/RenderManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "RenderManager"

    const-string v2, "unbindRenderWithStream error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/rendermanager/videoRender/VideoStreamsView;->unbindRenderWithStream()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RenderManager"

    const-string v2, "unbind render failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "RenderManager"

    const-string v1, "unbind render succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
