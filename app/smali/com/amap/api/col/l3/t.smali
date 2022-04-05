.class public Lcom/amap/api/col/l3/t;
.super Landroid/view/TextureView;

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

    new-instance v0, Lcom/amap/api/col/l3/t$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/t$j;-><init>(B)V

    sput-object v0, Lcom/amap/api/col/l3/t;->a:Lcom/amap/api/col/l3/t$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/t;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/t;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3/t;->k:I

    return p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$e;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$f;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$g;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/t;->h:Lcom/amap/api/col/l3/t$g;

    return-object p0
.end method

.method static synthetic d()Lcom/amap/api/col/l3/t$j;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/t;->a:Lcom/amap/api/col/l3/t$j;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/t;)Lcom/amap/api/col/l3/t$k;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/t;->i:Lcom/amap/api/col/l3/t$k;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/t;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3/t;->j:I

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/t;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3/t;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/amap/api/col/l3/t;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/t;->d:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/t$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/t;->a()V

    iput-object p1, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/t$f;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/t;->a()V

    iput-object p1, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->e()V

    return-void
.end method

.method public c()V
    .locals 1

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

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->a()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/t;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->d:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/amap/api/col/l3/t$i;

    iget-object v3, p0, Lcom/amap/api/col/l3/t;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3/t$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3/t$i;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/t;->e:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->g()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/t;->e:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/col/l3/t;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->c()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/l3/t;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/t$i;->d()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

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

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/t$i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/t$i;->b()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/t$i;->a(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3/t;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/t$m;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/t$m;-><init>(Lcom/amap/api/col/l3/t;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/t;->f:Lcom/amap/api/col/l3/t$e;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/l3/t$c;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/t$c;-><init>(Lcom/amap/api/col/l3/t;B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/t;->g:Lcom/amap/api/col/l3/t$f;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/t;->h:Lcom/amap/api/col/l3/t$g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/l3/t$d;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/t$d;-><init>(B)V

    iput-object v0, p0, Lcom/amap/api/col/l3/t;->h:Lcom/amap/api/col/l3/t$g;

    :cond_2
    iput-object p1, p0, Lcom/amap/api/col/l3/t;->d:Landroid/opengl/GLSurfaceView$Renderer;

    new-instance p1, Lcom/amap/api/col/l3/t$i;

    iget-object v0, p0, Lcom/amap/api/col/l3/t;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/t$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/t;->c:Lcom/amap/api/col/l3/t$i;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
