.class public Lcom/ifengyu/intercom/ui/map/b;
.super Ljava/lang/Object;
.source "OsmMapOperate.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/osmdroid/views/MapView;

.field private c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

.field private d:Lcom/ifengyu/intercom/ui/map/d/a/h;

.field private e:Lcom/ifengyu/intercom/ui/map/d/a/h;

.field private f:Lcom/ifengyu/intercom/ui/map/d/a/a;

.field private g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field private h:Lorg/osmdroid/api/IMapController;

.field private i:Lcom/ifengyu/intercom/ui/map/d/a/d;

.field private j:Lcom/ifengyu/intercom/ui/map/d/a/c;

.field private k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private l:Lcom/ifengyu/intercom/ui/map/c/b/b;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/ui/map/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/ui/map/d/a/b",
            "<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/b;->c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/b;)Lcom/ifengyu/intercom/ui/fragment/MapFragment;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/MapView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/b;)Lcom/ifengyu/intercom/ui/map/c/b/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/c/b/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->isMyLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->enableMyLocation()Z

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-wide v4, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v1, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    iget v1, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/b;)V
    .locals 12

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v8, v2}, Lcom/ifengyu/intercom/ui/map/d/a/b;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->b:Lorg/greenrobot/greendao/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    new-array v2, v3, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v9, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->g:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/c;

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->d()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v1, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    invoke-direct {v1, v8, v8, v0}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    const v2, 0x7f040110

    invoke-static {v0, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-virtual {v0, v3, v1}, Lcom/ifengyu/intercom/ui/map/d/a/b;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    :cond_4
    move v2, v3

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_6

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0f00a5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v6, Landroid/graphics/CornerPathEffect;

    invoke-direct {v6, v11}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_6
    move v1, v3

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    new-instance v2, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v2}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f00a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v4, Landroid/graphics/CornerPathEffect;

    invoke-direct {v4, v11}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v2, v8}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_7

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v2, v3

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V
    .locals 10

    const/4 v4, 0x4

    const/high16 v9, -0x1000000

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/ifengyu/intercom/ui/map/c/b/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/map/c/b/b;-><init>(Lorg/osmdroid/views/MapView;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/c/b/b;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/16 v2, 0x12

    new-array v3, v6, [Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/map/d/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->d:Lcom/ifengyu/intercom/ui/map/d/a/h;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/16 v2, 0x12

    new-array v3, v6, [Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/map/d/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->e:Lcom/ifengyu/intercom/ui/map/d/a/h;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/d/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->d:Lcom/ifengyu/intercom/ui/map/d/a/h;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/d/a/a;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/d/a/a;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v7}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/MapView;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    aget-wide v2, v0, v6

    aget-wide v4, v0, v7

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->i:Lcom/ifengyu/intercom/ui/map/d/a/d;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->i:Lcom/ifengyu/intercom/ui/map/d/a/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/d/a/c;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/map/d/a/c;->setDrawAccuracyEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->c(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v7}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setMaxLength(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setScaleBarOffset(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/b$1;-><init>(Lcom/ifengyu/intercom/ui/map/b;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/b$2;-><init>(Lcom/ifengyu/intercom/ui/map/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->e:Lcom/ifengyu/intercom/ui/map/d/a/h;

    goto/16 :goto_0
.end method

.method public a(ZLjava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v6, v0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v8, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-direct {v1, v2, v3, v4}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    const v2, 0x7f040110

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/map/d/a/b;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v6, v2, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v8, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v0, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v2, v4, v5, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f00a5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v4, Landroid/graphics/CornerPathEffect;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v4, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f00a4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v3, Landroid/graphics/CornerPathEffect;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    iget-wide v6, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->disableMyLocation()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/b;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/d/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/d/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/a;->detach()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/d/a/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/map/d/a/a;->a:Lcom/ifengyu/intercom/ui/map/d/a/g;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/g;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onDetach()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v2}, Lcom/ifengyu/intercom/ui/map/d/a/b;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/d/a/b;

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/network/a/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/b$3;-><init>(Lcom/ifengyu/intercom/ui/map/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b()V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->d:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->e:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method public j()Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object v0
.end method

.method public k()V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    return-void
.end method

.method public n()Lcom/ifengyu/intercom/bean/MapCurrentStatus;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/MapCurrentStatus;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v1

    iput v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    return-object v0
.end method
