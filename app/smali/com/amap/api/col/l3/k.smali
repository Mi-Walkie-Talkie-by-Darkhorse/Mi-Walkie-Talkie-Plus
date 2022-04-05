.class public final Lcom/amap/api/col/l3/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/v;


# instance fields
.field protected a:Z

.field private b:Lcom/amap/api/col/l3/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/k;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/amap/api/col/l3/k;->b:Lcom/amap/api/col/l3/u;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3/k;->a:Z

    new-instance p2, Lcom/amap/api/col/l3/j;

    invoke-direct {p2, p0, p1}, Lcom/amap/api/col/l3/j;-><init>(Lcom/amap/api/col/l3/v;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/k;->b:Lcom/amap/api/col/l3/u;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3/u;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/k;->b:Lcom/amap/api/col/l3/u;

    return-object v0
.end method

.method public final a(Lcom/amap/api/col/l3/dx;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/dy;)V
    .locals 0

    return-void
.end method

.method public final getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getRenderMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/k;->b:Lcom/amap/api/col/l3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final requestRender()V
    .locals 0

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 0

    return-void
.end method

.method public final setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    return-void
.end method
