.class public Lcom/ifengyu/intercom/ui/map/f/a/a;
.super Lcom/ifengyu/intercom/ui/map/f/a/e;


# instance fields
.field public b:Lcom/ifengyu/intercom/ui/map/f/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2

    new-instance v0, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/ifengyu/intercom/ui/map/f/a/a;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/map/f/a/e;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    new-instance p2, Lcom/ifengyu/intercom/ui/map/f/a/g;

    invoke-direct {p2, p1, p3}, Lcom/ifengyu/intercom/ui/map/f/a/g;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/a;->b:Lcom/ifengyu/intercom/ui/map/f/a/g;

    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    const/4 p3, 0x1

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(DDI)Lcom/ifengyu/intercom/ui/map/TilePoint;
    .locals 10

    add-int/lit8 v0, p4, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr p2, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v8

    mul-double v4, v4, p2

    double-to-int p2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v4

    div-double/2addr p0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    div-double p0, v8, p0

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr p0, v4

    sub-double/2addr v8, p0

    mul-double v0, v0, v8

    double-to-int p0, v0

    new-instance p1, Lcom/ifengyu/intercom/ui/map/TilePoint;

    invoke-direct {p1, p2, p0, p4}, Lcom/ifengyu/intercom/ui/map/TilePoint;-><init>(III)V

    return-object p1
.end method

.method public static a(Lcom/ifengyu/intercom/greendao/bean/a;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->i()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->f()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->h()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;
    .locals 6

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(DDI)Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object p0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(DDI)Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v0

    new-array v1, v1, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v2

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v3

    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v4

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v5

    sub-int v5, v2, v5

    mul-int v5, v5, v0

    add-int/2addr v4, v5

    new-instance v5, Lcom/ifengyu/intercom/ui/map/TilePoint;

    invoke-direct {v5, v3, v2, p2}, Lcom/ifengyu/intercom/ui/map/TilePoint;-><init>(III)V

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
