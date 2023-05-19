.class public final Lcom/amap/api/col/l3/ey;
.super Landroid/view/ViewGroup;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Lcom/amap/api/col/l3/an;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ey$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/ao;

.field b:I

.field c:I

.field private d:Lcom/amap/api/col/l3/u;

.field private e:Landroid/content/Context;

.field private f:Lcom/amap/api/col/l3/fa;

.field private g:Lcom/amap/api/col/l3/ex;

.field private h:Lcom/amap/api/col/l3/ev;

.field private i:Lcom/amap/api/col/l3/ez;

.field private j:Lcom/amap/api/col/l3/eu;

.field private k:Lcom/amap/api/col/l3/ew;

.field private l:Lcom/amap/api/col/l3/fb;

.field private m:Landroid/view/View;

.field private n:Lcom/amap/api/col/l3/cp;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/ey;->o:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ey;->p:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/amap/api/col/l3/ey;->b:I

    .line 5
    iput v1, p0, Lcom/amap/api/col/l3/ey;->c:I

    .line 6
    :try_start_0
    iput-object p2, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    .line 7
    iput-object p1, p0, Lcom/amap/api/col/l3/ey;->e:Landroid/content/Context;

    const/4 p2, -0x1

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 9
    new-instance v2, Lcom/amap/api/col/l3/fa;

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/fa;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    new-instance v2, Lcom/amap/api/col/l3/ez;

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/ez;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    new-instance v2, Lcom/amap/api/col/l3/eu;

    invoke-direct {v2, p1}, Lcom/amap/api/col/l3/eu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->j:Lcom/amap/api/col/l3/eu;

    new-instance v2, Lcom/amap/api/col/l3/ew;

    invoke-direct {v2, p1}, Lcom/amap/api/col/l3/ew;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->k:Lcom/amap/api/col/l3/ew;

    new-instance v2, Lcom/amap/api/col/l3/fb;

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/fb;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    new-instance v2, Lcom/amap/api/col/l3/ex;

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/ex;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->g:Lcom/amap/api/col/l3/ex;

    new-instance v2, Lcom/amap/api/col/l3/ev;

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-direct {v2, p1, v3}, Lcom/amap/api/col/l3/ev;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p2}, Lcom/amap/api/col/l3/u;->m()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p2}, Lcom/amap/api/col/l3/u;->m()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->j:Lcom/amap/api/col/l3/eu;

    invoke-virtual {p0, p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->k:Lcom/amap/api/col/l3/ew;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/amap/api/col/l3/ey$a;

    const/4 v1, -0x2

    const/4 v2, -0x2

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    const/4 p2, 0x0

    invoke-direct {v3, p2, p2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x53

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3/ey$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/amap/api/col/l3/ey$a;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {p2, p2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x53

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/col/l3/ey$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->g:Lcom/amap/api/col/l3/ex;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/amap/api/col/l3/ey$a;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {p2, p2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x33

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/col/l3/ey$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object p2, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Lcom/amap/api/col/l3/ey$1;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/ey$1;-><init>(Lcom/amap/api/col/l3/ey;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/listener/MapWidgetListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isMyLocationButtonEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->g:Lcom/amap/api/col/l3/ex;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "AMapDelegateImpGLSurfaceView"

    const-string v0, "locationView gone"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ey;)Lcom/amap/api/col/l3/ez;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    return-object p0
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 2

    and-int/lit8 v0, p6, 0x7

    and-int/lit8 p6, p6, 0x70

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sub-int/2addr p4, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 39
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    :cond_1
    :goto_0
    const/16 v0, 0x50

    if-ne p6, v0, :cond_2

    sub-int/2addr p5, p3

    goto :goto_2

    :cond_2
    const/16 v0, 0x11

    if-ne p6, v0, :cond_3

    .line 40
    div-int/lit8 p6, p3, 0x2

    :goto_1
    sub-int/2addr p5, p6

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    if-ne p6, v0, :cond_4

    .line 41
    div-int/lit8 p5, p5, 0x2

    div-int/lit8 p6, p3, 0x2

    goto :goto_1

    :cond_4
    :goto_2
    add-int p6, p4, p2

    add-int v0, p5, p3

    .line 42
    invoke-virtual {p1, p4, p5, p6, v0}, Landroid/view/View;->layout(IIII)V

    .line 43
    instance-of p1, p1, Lcom/amap/api/col/l3/v;

    if-eqz p1, :cond_5

    .line 44
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p1, p2, p3}, Lcom/amap/api/col/l3/u;->a(II)V

    :cond_5
    return-void
.end method

.method private a(Landroid/view/View;II[I)V
    .locals 4

    .line 28
    instance-of v0, p1, Landroid/widget/ListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    aput v3, p4, v2

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p4, v1

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 32
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    const/4 v0, -0x1

    const/4 v3, -0x2

    if-ne p2, v3, :cond_3

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    aput p2, p4, v2

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    aput p2, p4, v2

    goto :goto_0

    .line 35
    :cond_4
    aput p2, p4, v2

    :goto_0
    if-ne p3, v3, :cond_5

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    aput p1, p4, v1

    return-void

    :cond_5
    if-ne p3, v0, :cond_6

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    aput p1, p4, v1

    return-void

    .line 38
    :cond_6
    aput p3, p4, v1

    return-void
.end method

.method private b(Lcom/amap/api/col/l3/cp;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MapOverlayViewGroup"

    .line 8
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->o:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->e:Landroid/content/Context;

    const-string v2, "infowindow_bg.9.png"

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/ed;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ey;->o:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v2, "showInfoWindow decodeDrawableFromAsset"

    .line 11
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 13
    :try_start_1
    iget-boolean v2, p0, Lcom/amap/api/col/l3/ey;->r:Z

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/ao;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_1

    .line 15
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v3, v1}, Lcom/amap/api/col/l3/ao;->b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v2

    .line 16
    :cond_1
    iput-object v2, p0, Lcom/amap/api/col/l3/ey;->q:Landroid/view/View;

    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p0, Lcom/amap/api/col/l3/ey;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 18
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->q:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    if-nez v2, :cond_4

    .line 19
    :try_start_4
    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/ao;->a()Z

    move-result v3

    if-nez v3, :cond_3

    return-object p1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/ao;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_4
    move-object p1, v2

    .line 21
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/amap/api/col/l3/ey;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, p1

    move-object p1, v1

    :goto_3
    const-string v1, "getInfoWindow or getInfoContents"

    .line 23
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v2

    :cond_5
    :goto_4
    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3/ey;)Lcom/amap/api/col/l3/ev;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/ey;)Lcom/amap/api/col/l3/fb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/ey;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/ey;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ey;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/ey;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fb;->a(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fb;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(IF)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3/fa;->a(IF)V

    .line 11
    invoke-direct {p0}, Lcom/amap/api/col/l3/ey;->k()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 53
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/ao;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/cp;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 21
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/col/l3/cp;->isInfoWindowEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ey;->b_()V

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_4

    .line 25
    iput-object p1, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    const/4 v0, 0x1

    .line 26
    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/cp;->a(Z)V

    .line 27
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ey;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isLogoEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object p1, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3/eg;->a(DD)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->p()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 18
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->k:Lcom/amap/api/col/l3/ew;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->k:Lcom/amap/api/col/l3/ew;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/ew;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v2, p1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final a_()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/amap/api/col/l3/cs;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/ey;->p:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v0}, Lcom/amap/api/col/l3/cp;->e()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    .line 4
    invoke-interface {v2}, Lcom/amap/api/col/l3/cp;->c()I

    move-result v2

    add-int/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v2}, Lcom/amap/api/col/l3/cp;->f()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    .line 6
    invoke-interface {v3}, Lcom/amap/api/col/l3/cp;->d()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    .line 7
    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3/ey;->b(Lcom/amap/api/col/l3/cp;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v10, 0x0

    if-eqz v3, :cond_4

    .line 8
    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    if-eqz v4, :cond_2

    if-eq v3, v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v3, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setDrawingCacheQuality(I)V

    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v4}, Lcom/amap/api/col/l3/cs;->h()Landroid/graphics/Rect;

    const/4 v4, -0x2

    if-eqz v3, :cond_3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v5, v3

    goto :goto_0

    :cond_3
    const/4 v5, -0x2

    :goto_0
    new-instance v11, Lcom/amap/api/col/l3/ey$a;

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v3}, Lcom/amap/api/col/l3/cp;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    const/16 v9, 0x51

    move-object v3, v11

    move v7, v0

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/col/l3/ey$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {p0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_4
    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/ey$a;

    if-eqz v3, :cond_5

    .line 11
    iget-object v4, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v4}, Lcom/amap/api/col/l3/cp;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 12
    iput v0, v3, Lcom/amap/api/col/l3/ey$a;->b:I

    .line 13
    iput v2, v3, Lcom/amap/api/col/l3/ey$a;->c:I

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 14
    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/col/l3/ey;->onLayout(ZIIII)V

    .line 15
    iput v0, p0, Lcom/amap/api/col/l3/ey;->b:I

    .line 16
    iput v2, p0, Lcom/amap/api/col/l3/ey;->c:I

    .line 17
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->a:Lcom/amap/api/col/l3/ao;

    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/l3/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MapOverlayViewGroup"

    const-string v2, "redrawInfoWindow"

    .line 23
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fa;->a(I)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 7
    invoke-direct {p0}, Lcom/amap/api/col/l3/ey;->k()V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fb;->a(Z)V

    return-void
.end method

.method public final b_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3/ey$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/ey$2;-><init>(Lcom/amap/api/col/l3/ey;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/cp;->a(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/ey;->n:Lcom/amap/api/col/l3/cp;

    .line 6
    iput v1, p0, Lcom/amap/api/col/l3/ey;->b:I

    .line 7
    iput v1, p0, Lcom/amap/api/col/l3/ey;->c:I

    :cond_1
    return-void
.end method

.method public final c()Landroid/graphics/Point;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/fa;->b()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fa;->b(I)V

    .line 7
    invoke-direct {p0}, Lcom/amap/api/col/l3/ey;->k()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->g:Lcom/amap/api/col/l3/ex;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final d()Lcom/amap/api/col/l3/eu;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->j:Lcom/amap/api/col/l3/eu;

    return-object v0
.end method

.method public final d(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fa;->c(I)V

    .line 6
    invoke-direct {p0}, Lcom/amap/api/col/l3/ey;->k()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ev;->a(Z)V

    return-void
.end method

.method public final e(I)F
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/amap/api/col/l3/ey;->k()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/fa;->d(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/amap/api/col/l3/ew;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->k:Lcom/amap/api/col/l3/ew;

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ez;->c()V

    return-void

    :cond_1
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ez;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ez;->b()V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final f()Lcom/amap/api/col/l3/ex;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->g:Lcom/amap/api/col/l3/ex;

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final g()Lcom/amap/api/col/l3/ev;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    return-object v0
.end method

.method public final h()Lcom/amap/api/col/l3/fa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ey;->b_()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->l:Lcom/amap/api/col/l3/fb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/fb;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->i:Lcom/amap/api/col/l3/ez;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ez;->a()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/l3/fa;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->g:Lcom/amap/api/col/l3/ex;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ex;->a()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->h:Lcom/amap/api/col/l3/ev;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ev;->a()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/ey;->k:Lcom/amap/api/col/l3/ew;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ew;->a()V

    .line 4
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/ey;->q:Landroid/view/View;

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/col/l3/ey;->b:I

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/ey;->c:I

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_6

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lcom/amap/api/col/l3/ey$a;

    const/4 p5, 0x2

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/amap/api/col/l3/ey$a;

    new-array p5, p5, [I

    .line 5
    iget v2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2, v3, p5}, Lcom/amap/api/col/l3/ey;->a(Landroid/view/View;II[I)V

    instance-of v2, v1, Lcom/amap/api/col/l3/fb;

    if-eqz v2, :cond_0

    aget v2, p5, p2

    aget v3, p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    aget p5, p5, p2

    sub-int v4, v0, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget v6, p4, Lcom/amap/api/col/l3/ey$a;->d:I

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3/ey;->a(Landroid/view/View;IIIII)V

    goto/16 :goto_2

    :cond_0
    instance-of v2, v1, Lcom/amap/api/col/l3/ex;

    if-eqz v2, :cond_1

    aget v2, p5, p2

    aget v3, p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    aget v5, p5, p2

    sub-int/2addr v4, v5

    aget v5, p5, v0

    iget v6, p4, Lcom/amap/api/col/l3/ey$a;->d:I

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/amap/api/col/l3/ev;

    if-eqz v2, :cond_2

    aget v2, p5, p2

    aget v3, p5, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p4, Lcom/amap/api/col/l3/ey$a;->d:I

    goto :goto_1

    :cond_2
    iget-object v2, p4, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    iget-object v2, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {v2}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v2

    iget-object v3, p4, Lcom/amap/api/col/l3/ey$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3, v7}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v7, Landroid/graphics/Point;->x:I

    iget v3, p4, Lcom/amap/api/col/l3/ey$a;->b:I

    add-int v4, v2, v3

    iput v4, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget v3, p4, Lcom/amap/api/col/l3/ey$a;->c:I

    add-int v5, v2, v3

    iput v5, v7, Landroid/graphics/Point;->y:I

    aget v2, p5, p2

    aget v3, p5, v0

    iget v6, p4, Lcom/amap/api/col/l3/ey$a;->d:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3/ey;->a(Landroid/view/View;IIIII)V

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    new-array p5, p5, [I

    iget v2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/amap/api/col/l3/ey;->a(Landroid/view/View;II[I)V

    instance-of p4, v1, Lcom/amap/api/col/l3/ew;

    if-eqz p4, :cond_4

    aget v2, p5, p2

    aget v3, p5, v0

    const/16 v4, 0x14

    iget-object p4, p0, Lcom/amap/api/col/l3/ey;->d:Lcom/amap/api/col/l3/u;

    invoke-interface {p4}, Lcom/amap/api/col/l3/u;->l()Landroid/graphics/Point;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Point;->y:I

    add-int/lit8 p4, p4, -0x50

    aget p5, p5, v0

    sub-int v5, p4, p5

    const/16 v6, 0x33

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3/ey;->a(Landroid/view/View;IIIII)V

    goto :goto_2

    :cond_4
    aget v2, p5, p2

    aget v3, p5, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x33

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3/ey;->a(Landroid/view/View;IIIII)V

    :cond_5
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3/ey;->f:Lcom/amap/api/col/l3/fa;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fa;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
