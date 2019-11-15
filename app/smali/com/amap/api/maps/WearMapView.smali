.class public Lcom/amap/api/maps/WearMapView;
.super Landroid/view/ViewGroup;
.source "WearMapView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/WearMapView$OnDismissCallback;
    }
.end annotation


# static fields
.field private static f:I

.field private static g:I


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

.field private c:Lcom/amap/api/maps/AMap;

.field private d:Landroid/view/View;

.field private e:Lcom/amap/api/maps/SwipeDismissView;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/maps/WearMapView;->f:I

    sput v0, Lcom/amap/api/maps/WearMapView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    const v0, 0x10100dc

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    const v0, 0x10100dc

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/AMapOptions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/amap/api/maps/WearMapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/WearMapView;->h:I

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setOptions(Lcom/amap/api/maps/AMapOptions;)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/WearMapView;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/amap/api/maps/WearMapView;->f:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/amap/api/maps/WearMapView;->g:I

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/amap/api/maps/SwipeDismissView;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/maps/SwipeDismissView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    sget v2, Lcom/amap/api/maps/WearMapView;->g:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/SwipeDismissView;->setBackgroundColor(I)V

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/WearMapView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps/WearMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->c:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/maps/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMap;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->c:Lcom/amap/api/maps/AMap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->c:Lcom/amap/api/maps/AMap;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v1

    const-string v2, "com.amap.api.wrapper.MapFragmentDelegateWrapper"

    const-class v3, Lcom/amap/api/mapcore/util/p;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ha;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/p;

    invoke-direct {v0, v8}, Lcom/amap/api/mapcore/util/p;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/WearMapView;->d:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/maps/WearMapView;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/maps/WearMapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->removeAllViews()V

    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->onResume()V

    return-void
.end method

.method public onExitAmbient()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->onPause()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/maps/WearMapView;->d:Landroid/view/View;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-direct {p0, v3}, Lcom/amap/api/maps/WearMapView;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v3}, Lcom/amap/api/maps/SwipeDismissView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v4, v1, v1, v3, p4}, Lcom/amap/api/maps/SwipeDismissView;->layout(IIII)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/amap/api/maps/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/amap/api/maps/SwipeDismissView;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v0}, Lcom/amap/api/maps/SwipeDismissView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Lcom/amap/api/maps/SwipeDismissView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4, v0}, Landroid/view/View;->measure(II)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public setOnDismissCallbackListener(Lcom/amap/api/maps/WearMapView$OnDismissCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/WearMapView;->e:Lcom/amap/api/maps/SwipeDismissView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/SwipeDismissView;->setCallback(Lcom/amap/api/maps/WearMapView$OnDismissCallback;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/amap/api/maps/WearMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    return-void
.end method
