.class public final Lcom/amap/api/col/l3/ao;
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

.field private h:Lcom/amap/api/col/l3/an;

.field private i:Lcom/amap/api/col/l3/an;

.field private j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/col/l3/ao;->c:Z

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    new-instance v0, Lcom/amap/api/col/l3/ao$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ao$1;-><init>(Lcom/amap/api/col/l3/ao;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 6
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->b:Landroid/content/Context;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ao;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ao;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ao;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ao;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3/ao;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ao;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/ao;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3/ao;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ao;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/ao;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ao;->f:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/amap/api/col/l3/an;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->h:Lcom/amap/api/col/l3/an;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p0}, Lcom/amap/api/col/l3/an;->a(Lcom/amap/api/col/l3/ao;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 0

    monitor-enter p0

    .line 14
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/amap/api/col/l3/ao;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/amap/api/col/l3/ao;->c:Z

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->i:Lcom/amap/api/col/l3/an;

    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->i:Lcom/amap/api/col/l3/an;

    invoke-interface {p1}, Lcom/amap/api/col/l3/an;->b_()V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->h:Lcom/amap/api/col/l3/an;

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->h:Lcom/amap/api/col/l3/an;

    invoke-interface {p1}, Lcom/amap/api/col/l3/an;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/ao;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/ao;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->b:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->d:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->e:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->f:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->j:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 10
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 11
    iget-object v1, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final b(Lcom/amap/api/col/l3/an;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/ao;->i:Lcom/amap/api/col/l3/an;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lcom/amap/api/col/l3/an;->a(Lcom/amap/api/col/l3/ao;)V

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;->getInfoWindowUpdateTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized d()Lcom/amap/api/col/l3/an;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$ImageInfoWindowAdapter;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->i:Lcom/amap/api/col/l3/an;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    instance-of v0, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->i:Lcom/amap/api/col/l3/an;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 10
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->h:Lcom/amap/api/col/l3/an;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->b:Landroid/content/Context;

    const-string v1, "infowindow_bg.9.png"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ed;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final e(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ao;->a:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;->getOverturnInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
