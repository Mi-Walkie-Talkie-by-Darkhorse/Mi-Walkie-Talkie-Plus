.class public Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OsmOffMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/osmdroid/events/MapListener;
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;


# instance fields
.field private a:Lorg/osmdroid/views/MapView;

.field private b:Lcom/ifengyu/intercom/ui/map/d/a/c;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lorg/osmdroid/api/IMapController;

.field private r:Landroid/hardware/SensorManager;

.field private s:Landroid/hardware/Sensor;

.field private t:Lcom/ifengyu/intercom/ui/map/d/a/d;

.field private u:Z

.field private v:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->u:Z

    return-void
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/d/a/a;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/map/d/a/h;

    sget-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/16 v5, 0xc

    const/16 v6, 0x12

    new-array v7, v8, [Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ifengyu/intercom/ui/map/d/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/map/d/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v9}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/MapView;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/api/IMapController;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/api/IMapController;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    aget-wide v2, v0, v8

    aget-wide v4, v0, v9

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Lcom/ifengyu/intercom/ui/map/d/a/d;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Lcom/ifengyu/intercom/ui/map/d/a/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/d/a/c;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0, v8}, Lcom/ifengyu/intercom/ui/map/d/a/c;->setDrawAccuracyEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 9

    const v8, 0x30ff2400

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    sget v0, Lcom/ifengyu/intercom/a;->c:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v3, v0

    sget v0, Lcom/ifengyu/intercom/a;->c:I

    sub-int/2addr v0, v3

    div-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    div-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    add-int v1, v4, v3

    invoke-virtual {v6, v1, v5}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    add-int v2, v4, v3

    add-int v7, v5, v3

    invoke-virtual {v6, v2, v7}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    if-ne p2, v4, :cond_0

    invoke-virtual {p0, v4, p3}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "locationArr"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v2}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Lorg/osmdroid/views/overlay/Marker;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Lorg/osmdroid/views/overlay/Marker;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020121

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    aput-object v0, v2, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    aput-object v0, v2, v4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_init_points"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "off_map_downloaded_names"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    aget-wide v2, v0, v3

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    goto/16 :goto_0

    :sswitch_5
    const-class v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a(Ljava/lang/Class;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009d -> :sswitch_1
        0x7f1000e3 -> :sswitch_4
        0x7f1000e4 -> :sswitch_3
        0x7f1000e5 -> :sswitch_2
        0x7f10011a -> :sswitch_5
        0x7f10011b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "off_map_downloaded_names"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->d:Ljava/util/ArrayList;

    const v0, 0x7f100119

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/MapView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->c()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:Landroid/hardware/Sensor;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->u:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->a:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->u:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    :cond_0
    return-void
.end method

.method public onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Lcom/ifengyu/intercom/ui/map/d/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Lcom/ifengyu/intercom/ui/map/d/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Lcom/ifengyu/intercom/ui/map/d/a/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->d()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->enableMyLocation()Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->disableMyLocation()V

    return-void
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->d()V

    const/4 v0, 0x0

    return v0
.end method
