.class public Lcom/amap/api/mapcore/util/af;
.super Ljava/lang/Object;
.source "InfoWindowDelegate.java"


# instance fields
.field a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lcom/amap/api/mapcore/util/ae;

.field private i:Lcom/amap/api/mapcore/util/ae;

.field private j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/af;->c:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/amap/api/mapcore/util/af$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/af$1;-><init>(Lcom/amap/api/mapcore/util/af;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/af;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/af;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/af;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/af;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/af;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/af;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/af;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/af;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/ae;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->h:Lcom/amap/api/mapcore/util/ae;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->h:Lcom/amap/api/mapcore/util/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->h:Lcom/amap/api/mapcore/util/ae;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/ae;->a(Lcom/amap/api/mapcore/util/af;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af;->e()Lcom/amap/api/mapcore/util/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ae;->a(Lcom/amap/api/mapcore/util/cg;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/af;->c:Z

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ae;->a_()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->h:Lcom/amap/api/mapcore/util/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->h:Lcom/amap/api/mapcore/util/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ae;->a_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/af;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/af;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af;->e()Lcom/amap/api/mapcore/util/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/ae;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->e:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/ae;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/ae;->a(Lcom/amap/api/mapcore/util/af;)V

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    check-cast v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;->getInfoWindowUpdateTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    check-cast v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    check-cast v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af;->e()Lcom/amap/api/mapcore/util/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ae;->b()V

    :cond_0
    return-void
.end method

.method public e(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    check-cast v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized e()Lcom/amap/api/mapcore/util/ae;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->i:Lcom/amap/api/mapcore/util/ae;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->h:Lcom/amap/api/mapcore/util/ae;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/af;->e()Lcom/amap/api/mapcore/util/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ae;->a_()V

    :cond_0
    return-void
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->b:Landroid/content/Context;

    const-string v1, "infowindow_bg.9.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/dv;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/drawable/Drawable;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
