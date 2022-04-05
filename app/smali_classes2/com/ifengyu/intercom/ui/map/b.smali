.class public Lcom/ifengyu/intercom/ui/map/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/osmdroid/views/MapView;

.field private c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

.field private d:Lcom/ifengyu/intercom/ui/map/f/a/h;

.field private e:Lcom/ifengyu/intercom/ui/map/f/a/h;

.field private f:Lcom/ifengyu/intercom/ui/map/f/a/a;

.field private g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field private h:Lorg/osmdroid/api/IMapController;

.field private i:Lcom/ifengyu/intercom/ui/map/f/a/d;

.field private j:Lcom/ifengyu/intercom/ui/map/f/a/c;

.field private k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private l:Lcom/ifengyu/intercom/ui/map/e/b/b;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/ui/map/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/ui/map/f/a/b<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/b;->c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/MapView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/b;)Lcom/ifengyu/intercom/ui/map/e/b/b;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/e/b/b;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V
    .locals 5

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-wide v3, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v1, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    iget p1, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    invoke-interface {v0, p1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/b;)V
    .locals 10

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v4}, Lcom/ifengyu/intercom/ui/map/f/a/b;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v3, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/intercom/greendao/bean/c;

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/bean/c;->g()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p1, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/api/IGeoPoint;

    invoke-direct {p1, v1, v1, v4}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    const v5, 0x7f0c0151

    invoke-static {v4, v5, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {p1, v4}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-virtual {v4, v2, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40400000    # 3.0f

    if-ge p1, v4, :cond_6

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v4}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    invoke-static {v6}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v6

    invoke-virtual {v4, v6}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06018e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    new-instance v7, Landroid/graphics/CornerPathEffect;

    invoke-direct {v7, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v4, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {v4, v8}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_8

    new-instance v4, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v4}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    invoke-static {v6}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v7

    invoke-virtual {v4, v7}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06018d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    new-instance v8, Landroid/graphics/CornerPathEffect;

    invoke-direct {v8, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v4, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v4, v7}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v7}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne p1, v4, :cond_7

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v8, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V
    .locals 7

    new-instance v0, Lcom/ifengyu/intercom/ui/map/e/b/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    const/16 v3, 0x28

    invoke-direct {v0, v1, v3, v2}, Lcom/ifengyu/intercom/ui/map/e/b/b;-><init>(Lorg/osmdroid/views/MapView;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/e/b/b;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const/16 v4, 0x12

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/ifengyu/intercom/ui/map/f/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->d:Lcom/ifengyu/intercom/ui/map/f/a/h;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/ifengyu/intercom/ui/map/f/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->e:Lcom/ifengyu/intercom/ui/map/f/a/h;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/f/a/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    sget-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->d:Lcom/ifengyu/intercom/ui/map/f/a/h;

    :cond_0
    invoke-direct {v1, v3, v0}, Lcom/ifengyu/intercom/ui/map/f/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/f/a/a;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/MapView;->setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1, v2}, Lorg/osmdroid/views/MapView;->setBuiltInZoomControls(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    if-eqz p2, :cond_1

    const/16 p2, 0xf

    invoke-interface {p1, p2}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object p1

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    aget-wide v3, p1, v2

    aget-wide v5, p1, v0

    invoke-direct {p2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {p1, p2}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/ui/map/f/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->i:Lcom/ifengyu/intercom/ui/map/f/a/d;

    new-instance p1, Lcom/ifengyu/intercom/ui/map/f/a/c;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->i:Lcom/ifengyu/intercom/ui/map/f/a/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-direct {p1, p2, v1}, Lcom/ifengyu/intercom/ui/map/f/a/c;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {p1, v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDrawAccuracyEnabled(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-direct {p1, p2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {p1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setMaxLength(F)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p2

    float-to-int p2, p2

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setScaleBarOffset(II)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->k:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    new-instance p2, Lcom/ifengyu/intercom/ui/map/b$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/map/b$a;-><init>(Lcom/ifengyu/intercom/ui/map/b;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/map/b$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/map/b$b;-><init>(Lcom/ifengyu/intercom/ui/map/b;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public a(ZLjava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    new-instance p1, Lorg/osmdroid/views/overlay/OverlayItem;

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v4, v4, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v6, v6, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-direct {p1, v0, v0, v3}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    const v4, 0x7f0c0151

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {p1, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-virtual {v3, v1, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v4, v4, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v6, p1, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v3, v3, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v5, p2, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {p1, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {p2}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v4

    invoke-virtual {p2, v4}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06018e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    new-instance v5, Landroid/graphics/CornerPathEffect;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {v5, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance p2, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {p2}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p3

    invoke-virtual {p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x7f06018d

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    new-instance p3, Lorg/osmdroid/util/GeoPoint;

    iget-wide v0, p1, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    iget-wide v3, p1, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {p3, v0, v1, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/Polyline;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public b()Lcom/ifengyu/intercom/bean/MapCurrentStatus;
    .locals 3

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

    move-result-wide v1

    iput-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    return-object v0
.end method

.method public c()V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

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

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/f/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/f/a/e;->detach()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->f:Lcom/ifengyu/intercom/ui/map/f/a/a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/map/f/a/a;->b:Lcom/ifengyu/intercom/ui/map/f/a/g;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/f/a/g;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onDetach()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/b;->i()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->j:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ifengyu/intercom/ui/map/f/a/b;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06018d

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

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/b$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/b$c;-><init>(Lcom/ifengyu/intercom/ui/map/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->l:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b()V

    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->m:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->n:Lcom/ifengyu/intercom/ui/map/f/a/b;

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->e:Lcom/ifengyu/intercom/ui/map/f/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b;->d:Lcom/ifengyu/intercom/ui/map/f/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->g:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b;->h:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    return-void
.end method
