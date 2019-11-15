.class public Lcom/amap/api/mapcore/util/er;
.super Landroid/view/ViewGroup;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/er$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/af;

.field b:I

.field c:I

.field private d:Lcom/amap/api/mapcore/util/l;

.field private e:Landroid/content/Context;

.field private f:Lcom/amap/api/mapcore/util/et;

.field private g:Lcom/amap/api/mapcore/util/eq;

.field private h:Lcom/amap/api/mapcore/util/eo;

.field private i:Lcom/amap/api/mapcore/util/es;

.field private j:Lcom/amap/api/mapcore/util/en;

.field private k:Lcom/amap/api/mapcore/util/ep;

.field private l:Lcom/amap/api/mapcore/util/eu;

.field private m:Landroid/view/View;

.field private n:Lcom/amap/api/mapcore/util/cg;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->o:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/er;->p:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/er;->b:I

    iput v1, p0, Lcom/amap/api/mapcore/util/er;->c:I

    :try_start_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er;->e:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/er;->setBackgroundColor(I)V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/er;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/er;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/es;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x2

    new-instance v0, Lcom/amap/api/mapcore/util/et;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/et;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    new-instance v0, Lcom/amap/api/mapcore/util/es;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/es;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    new-instance v0, Lcom/amap/api/mapcore/util/en;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/en;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->j:Lcom/amap/api/mapcore/util/en;

    new-instance v0, Lcom/amap/api/mapcore/util/ep;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/ep;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    new-instance v0, Lcom/amap/api/mapcore/util/eu;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/eu;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    new-instance v0, Lcom/amap/api/mapcore/util/eq;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/eq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    new-instance v0, Lcom/amap/api/mapcore/util/eo;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/eo;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->l()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v2}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/er;->j:Lcom/amap/api/mapcore/util/en;

    invoke-virtual {p0, v3, v0, v2}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/mapcore/util/er$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/mapcore/util/er$a;

    invoke-static {v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/mapcore/util/er$a;

    invoke-static {v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore/util/eo;->setVisibility(I)V

    new-instance v0, Lcom/amap/api/mapcore/util/er$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/er$1;-><init>(Lcom/amap/api/mapcore/util/er;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/listener/MapWidgetListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isMyLocationButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "locationView gone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, -0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/er;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->h()Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    new-instance v0, Lcom/amap/api/mapcore/util/er$a;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cg;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    const/16 v6, 0x51

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/mapcore/util/er;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3

    and-int/lit8 v0, p6, 0x7

    and-int/lit8 v1, p6, 0x70

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    sub-int/2addr p4, p2

    :cond_0
    :goto_0
    const/16 v0, 0x50

    if-ne v1, v0, :cond_4

    sub-int/2addr p5, p3

    :cond_1
    :goto_1
    add-int v0, p4, p2

    add-int v1, p5, p3

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v0, p1, Lcom/amap/api/mapcore/util/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p2, p3}, Lcom/amap/api/mapcore/util/l;->b(II)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x11

    if-ne v1, v0, :cond_5

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p5, v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    div-int/lit8 v0, p5, 0x2

    div-int/lit8 v1, p3, 0x2

    sub-int p5, v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, p4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p4, v3

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    if-ne p2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    aput v0, p4, v2

    :goto_0
    if-ne p3, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    aput v0, p4, v3

    :goto_1
    return-void

    :cond_3
    if-ne p2, v5, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->getMeasuredWidth()I

    move-result v0

    aput v0, p4, v2

    goto :goto_0

    :cond_4
    aput p2, p4, v2

    goto :goto_0

    :cond_5
    if-ne p3, v5, :cond_6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->getMeasuredHeight()I

    move-result v0

    aput v0, p4, v3

    goto :goto_1

    :cond_6
    aput p3, p4, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    const/16 v6, 0x33

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;II[I)V

    instance-of v1, p1, Lcom/amap/api/mapcore/util/ep;

    if-eqz v1, :cond_0

    aget v2, v0, v4

    aget v3, v0, v5

    const/16 v4, 0x14

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->k()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x50

    aget v0, v0, v5

    sub-int v5, v1, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;IIIII)V

    :goto_0
    return-void

    :cond_0
    aget v2, v0, v4

    aget v3, v0, v5

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;IIIII)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/amap/api/mapcore/util/er$a;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p2, Lcom/amap/api/mapcore/util/er$a;->width:I

    iget v2, p2, Lcom/amap/api/mapcore/util/er$a;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;II[I)V

    instance-of v1, p1, Lcom/amap/api/mapcore/util/eu;

    if-eqz v1, :cond_1

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->getWidth()I

    move-result v1

    aget v0, v0, v4

    sub-int v4, v1, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->getHeight()I

    move-result v5

    iget v6, p2, Lcom/amap/api/mapcore/util/er$a;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/amap/api/mapcore/util/eq;

    if-eqz v1, :cond_2

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->getWidth()I

    move-result v1

    aget v4, v0, v4

    sub-int v4, v1, v4

    aget v5, v0, v5

    iget v6, p2, Lcom/amap/api/mapcore/util/er$a;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/amap/api/mapcore/util/eo;

    if-eqz v1, :cond_3

    aget v2, v0, v4

    aget v3, v0, v5

    iget v6, p2, Lcom/amap/api/mapcore/util/er$a;->d:I

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/amap/api/mapcore/util/er$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    iget-object v2, p2, Lcom/amap/api/mapcore/util/er$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p2, Lcom/amap/api/mapcore/util/er$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v2, v3, v7}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, p2, Lcom/amap/api/mapcore/util/er$a;->b:I

    add-int/2addr v1, v2

    iput v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v2, p2, Lcom/amap/api/mapcore/util/er$a;->c:I

    add-int/2addr v1, v2

    iput v1, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    aget v2, v0, v4

    aget v3, v0, v5

    iget v4, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p2, Lcom/amap/api/mapcore/util/er$a;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;IIIII)V

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/mapcore/util/cg;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v2, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->o:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->e:Landroid/content/Context;

    const-string v3, "infowindow_bg.9.png"

    invoke-static {v1, v3}, Lcom/amap/api/mapcore/util/dv;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/er;->o:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/er;->r:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/af;->b(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore/util/er;->q:Landroid/view/View;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/er;->r:Z

    :goto_1
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/af;->a()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "MapOverlayViewGroup"

    const-string v4, "showInfoWindow decodeDrawableFromAsset"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->q:Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    const-string v2, "MapOverlayViewGroup"

    const-string v3, "getInfoWindow or getInfoContents"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eu;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/er;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/er;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->postInvalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->a(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/et;->a(IF)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/er;->l()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/af;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cg;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->isInfoWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->a_()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/cg;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/er;->r:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isLogoEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/dy;->a(DD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->n()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/er$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/er$2;-><init>(Lcom/amap/api/mapcore/util/er;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/util/cg;->a(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    iput v2, p0, Lcom/amap/api/mapcore/util/er;->b:I

    iput v2, p0, Lcom/amap/api/mapcore/util/er;->c:I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 9

    const/16 v8, 0x8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/er;->p:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->c()I

    move-result v1

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->f()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->d()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/er;->b(Lcom/amap/api/mapcore/util/cg;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v6, v7}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/er$a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/er$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iput v6, v0, Lcom/amap/api/mapcore/util/er$a;->b:I

    iput v7, v0, Lcom/amap/api/mapcore/util/er$a;->c:I

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore/util/er;->onLayout(ZIIII)V

    iput v6, p0, Lcom/amap/api/mapcore/util/er;->b:I

    iput v7, p0, Lcom/amap/api/mapcore/util/er;->c:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->a:Lcom/amap/api/mapcore/util/af;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/er;->n:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/cg;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapOverlayViewGroup"

    const-string v2, "redrawInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/et;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->postInvalidate()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/er;->l()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->a(Z)V

    goto :goto_0
.end method

.method public c()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->c()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/et;->b(I)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/er;->l()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()Lcom/amap/api/mapcore/util/en;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->j:Lcom/amap/api/mapcore/util/en;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/et;->c(I)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/er;->l()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eo;->a(Z)V

    goto :goto_0
.end method

.method public e(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/er;->l()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/et;->d(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/amap/api/mapcore/util/ep;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    return-object v0
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/es;->a(Z)V

    goto :goto_0
.end method

.method public f()Lcom/amap/api/mapcore/util/eq;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    return-object v0
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public g()Lcom/amap/api/mapcore/util/eo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    return-object v0
.end method

.method public h()Lcom/amap/api/mapcore/util/et;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->l:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eu;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->i:Lcom/amap/api/mapcore/util/es;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/es;->a()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->g:Lcom/amap/api/mapcore/util/eq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eq;->a()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->h:Lcom/amap/api/mapcore/util/eo;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eo;->a()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->k:Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ep;->b()V

    :cond_5
    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->a_()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->i()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/er;->q:Landroid/view/View;

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/er;->b:I

    iput v0, p0, Lcom/amap/api/mapcore/util/er;->c:I

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/er;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/er;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/api/mapcore/util/er$a;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/er$a;

    invoke-direct {p0, v3, v0}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;Lcom/amap/api/mapcore/util/er$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/amap/api/mapcore/util/er;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er;->f:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
