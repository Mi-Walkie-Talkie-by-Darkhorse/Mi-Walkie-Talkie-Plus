.class public Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OsmOffMapActivity.java"

# interfaces
.implements Lorg/osmdroid/events/MapListener;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;


# instance fields
.field private q:Lorg/osmdroid/views/MapView;

.field private r:Lcom/ifengyu/intercom/ui/map/f/a/c;

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lorg/osmdroid/api/IMapController;

.field private v:Landroid/hardware/SensorManager;

.field private w:Landroid/hardware/Sensor;

.field private x:Lcom/ifengyu/intercom/ui/map/f/a/d;

.field private y:Z

.field private z:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->y:Z

    return-void
.end method

.method private w()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    :cond_0
    sget v0, Lcom/ifengyu/intercom/d;->b:I

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    .line 4
    div-int/lit8 v0, v0, 0x2

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v4

    add-int v5, v0, v1

    .line 8
    invoke-virtual {v3, v5, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    add-int/2addr v2, v1

    .line 9
    invoke-virtual {v3, v5, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    .line 10
    invoke-virtual {v3, v0, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    const v1, 0x30ff2400

    .line 18
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 19
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:I

    return-void
.end method

.method private x()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/f/a/a;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/map/f/a/h;

    sget-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    const/16 v7, 0xc

    const/16 v8, 0x12

    invoke-direct {v3, v4, v7, v8, v6}, Lcom/ifengyu/intercom/ui/map/f/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/intercom/ui/map/f/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/MapView;->setBuiltInZoomControls(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->u:Lorg/osmdroid/api/IMapController;

    const/16 v2, 0xf

    .line 5
    invoke-interface {v0, v2}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v0

    .line 7
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    aget-wide v3, v0, v5

    aget-wide v6, v0, v1

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->u:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0, v2}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/f/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->x:Lcom/ifengyu/intercom/ui/map/f/a/d;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->x:Lcom/ifengyu/intercom/ui/map/f/a/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/f/a/c;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/c;

    .line 11
    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDrawAccuracyEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->w()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    .line 1
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "locationArr"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {p2, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 7
    new-instance p1, Lorg/osmdroid/views/overlay/Marker;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-direct {p1, p3}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->z:Lorg/osmdroid/views/overlay/Marker;

    .line 8
    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->z:Lorg/osmdroid/views/overlay/Marker;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080126

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->z:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {p1, p0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->z:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110248

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->s:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/osmdroid/util/GeoPoint;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    aput-object v4, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    aput-object p1, v3, v0

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "intent_init_points"

    .line 7
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Ljava/util/ArrayList;

    const-string v1, "off_map_downloaded_names"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0xa

    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10
    :sswitch_1
    const-class p1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;I)V

    goto :goto_0

    .line 11
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    goto :goto_0

    .line 12
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    goto :goto_0

    .line 13
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object p1

    .line 14
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    aget-wide v3, p1, v1

    aget-wide v0, p1, v0

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    .line 17
    :sswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900b6 -> :sswitch_5
        0x7f09025a -> :sswitch_4
        0x7f09025b -> :sswitch_3
        0x7f09025d -> :sswitch_2
        0x7f090376 -> :sswitch_1
        0x7f0903e1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003f

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "off_map_downloaded_names"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->t:Ljava/util/ArrayList;

    const p1, 0x7f090251

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/MapView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    const p1, 0x7f090376

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025a

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025d

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025b

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0903e1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900b6

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->x()V

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    .line 13
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->w:Landroid/hardware/Sensor;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->y:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->q:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->y:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    :cond_0
    return-void
.end method

.method public onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->x:Lcom/ifengyu/intercom/ui/map/f/a/d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->x:Lcom/ifengyu/intercom/ui/map/f/a/d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->v:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->w:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->w()V

    const/4 p1, 0x0

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    return-void
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/OsmOffMapActivity;->w()V

    const/4 p1, 0x0

    return p1
.end method
