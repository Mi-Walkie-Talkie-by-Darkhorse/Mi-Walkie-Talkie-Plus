.class public Lcom/amap/api/col/l3/t;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/t$j;,
        Lcom/amap/api/col/l3/t$l;,
        Lcom/amap/api/col/l3/t$i;,
        Lcom/amap/api/col/l3/t$h;,
        Lcom/amap/api/col/l3/t$m;,
        Lcom/amap/api/col/l3/t$b;,
        Lcom/amap/api/col/l3/t$a;,
        Lcom/amap/api/col/l3/t$e;,
        Lcom/amap/api/col/l3/t$d;,
        Lcom/amap/api/col/l3/t$g;,
        Lcom/amap/api/col/l3/t$c;,
        Lcom/amap/api/col/l3/t$f;,
        Lcom/amap/api/col/l3/t$k;
    }
.end annotation


# static fields
.field private static final a:Lcom/amap/api/col/l3/t$j;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/t;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/col/l3/t$i;

.field private d:Landroid/opengl/GLSurfaceView$Renderer;

.field private e:Z

.field private f:Lcom/amap/api/col/l3/t$e;

.field private g:Lcom/amap/api/col/l3/t$f;

.field private h:Lcom/amap/api/col/l3/t$g;

.field private i:Lcom/amap/api/col/l3/t$k;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/t$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/t$j;-><init>(B)V

    sput-object v0, Lcom/amap/api/col/l3/t;->a:Lcom/amap/api/col/l3/t$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/t;->b:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/t;->k:I

    return p0
.end method

.method private a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/t;->h:Lcom/amap/api/col/l3/t$g;

    return-object p0
.end method

.method static synthetic d()Lcom/amap/api/col/l3/t$j;
    .locals 1

    .line 2
    sget-object v0, Lcom/amap/api/col/l3/t;->a:Lcom/amap/api/col/l3/t$j;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/t;->i:Lcom/amap/api/col/l3/t$k;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/t;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/t;->j:I

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/t;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/t;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/amap/api/col/l3/t;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/t;->d:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/t$e;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/amap/api/col/l3/t;->a()V

    .line 5
    iput-object p1, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/t$f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/t;->a()V

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->e()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->f()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    throw v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->a()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/t;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->d:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    new-instance v2, Lcom/amap/api/col/l3/t$i;

    iget-object v3, p0, Lcom/amap/api/col/l3/t;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3/t$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3/t$i;->a(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t;->e:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->g()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/t;->e:Z

    .line 4
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/col/l3/t;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->c()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3/t;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/t$i;->d()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/col/l3/t$i;->a(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/t$i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->b()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/t$i;->a(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/t;->a()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/t$m;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/t$m;-><init>(Lcom/amap/api/col/l3/t;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/amap/api/col/l3/t$c;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/t$c;-><init>(Lcom/amap/api/col/l3/t;B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->h:Lcom/amap/api/col/l3/t$g;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/amap/api/col/l3/t$d;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/t$d;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/t;->h:Lcom/amap/api/col/l3/t$g;

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/amap/api/col/l3/t;->d:Landroid/opengl/GLSurfaceView$Renderer;

    .line 9
    new-instance p1, Lcom/amap/api/col/l3/t$i;

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/t$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
