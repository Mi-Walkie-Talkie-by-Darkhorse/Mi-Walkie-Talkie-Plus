.class public Lcom/amap/api/maps/TextureMapView;
.super Landroid/widget/FrameLayout;
.source "TextureMapView.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

.field private b:Lcom/amap/api/maps/AMap;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    const v0, 0x10100dc

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    const v0, 0x10100dc

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/AMapOptions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/TextureMapView;->c:I

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setOptions(Lcom/amap/api/maps/AMapOptions;)V

    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

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
    iget-object v0, p0, Lcom/amap/api/maps/TextureMapView;->b:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/maps/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMap;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/maps/TextureMapView;->b:Lcom/amap/api/maps/AMap;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/TextureMapView;->b:Lcom/amap/api/maps/AMap;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/amap/api/maps/TextureMapView;->a:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getContext()Landroid/content/Context;

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

    iput-object v0, p0, Lcom/amap/api/maps/TextureMapView;->a:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps/TextureMapView;->a:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/p;

    invoke-direct {v0, v8}, Lcom/amap/api/mapcore/util/p;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/maps/TextureMapView;->a:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/TextureMapView;->a:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps/TextureMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
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
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/TextureMapView;->b:Lcom/amap/api/maps/AMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

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

.method public final onPause()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

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
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

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
    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

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

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/amap/api/maps/TextureMapView;->getMapFragmentDelegate()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    return-void
.end method
