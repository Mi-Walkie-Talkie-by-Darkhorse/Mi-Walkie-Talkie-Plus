.class Lpl/droidsonroids/gif/GifTextureView$b;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lpl/droidsonroids/gif/b;

.field b:[J

.field private c:Lpl/droidsonroids/gif/GifInfoHandle;

.field private d:Ljava/io/IOException;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1

    const-string v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lpl/droidsonroids/gif/b;

    invoke-direct {v0}, Lpl/droidsonroids/gif/b;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Lpl/droidsonroids/gif/b;

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic b(Lpl/droidsonroids/gif/GifTextureView$b;)Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->d:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V
    .locals 1
    .param p1    # Lpl/droidsonroids/gif/GifTextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpl/droidsonroids/gif/GifTextureView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->b()V

    if-eqz p2, :cond_0

    new-instance v0, Lpl/droidsonroids/gif/i;

    invoke-direct {v0, p2}, Lpl/droidsonroids/gif/i;-><init>(Lpl/droidsonroids/gif/GifTextureView$a;)V

    :goto_0
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()V

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$b;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->a()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->b()V

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()V

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/f;

    move-result-object v1

    invoke-virtual {v1}, Lpl/droidsonroids/gif/f;->a()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    iput-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a(CZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->d:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isAvailable()Z

    move-result v1

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v2, v1}, Lpl/droidsonroids/gif/b;->a(Z)V

    if-eqz v1, :cond_2

    new-instance v1, Lpl/droidsonroids/gif/GifTextureView$b$1;

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/GifTextureView$b$1;-><init>(Lpl/droidsonroids/gif/GifTextureView$b;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->b(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->a(F)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$b;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Lpl/droidsonroids/gif/b;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/b;->c()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :try_start_2
    iget-object v3, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v4, p0, Lpl/droidsonroids/gif/GifTextureView$b;->b:[J

    invoke-virtual {v3, v2, v4}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/view/Surface;[J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    throw v0
.end method
