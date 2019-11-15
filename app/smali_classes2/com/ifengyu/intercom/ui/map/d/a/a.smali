.class public Lcom/ifengyu/intercom/ui/map/d/a/a;
.super Lcom/ifengyu/intercom/ui/map/d/a/e;
.source "MapTileProvider.java"


# instance fields
.field public a:Lcom/ifengyu/intercom/ui/map/d/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2

    new-instance v0, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/util/SimpleRegisterReceiver;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;

    invoke-direct {v1, p1}, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/ifengyu/intercom/ui/map/d/a/a;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/map/d/a/e;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/g;

    invoke-direct {v0, p1, p3}, Lcom/ifengyu/intercom/ui/map/d/a/g;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/a;->a:Lcom/ifengyu/intercom/ui/map/d/a/g;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/a;->mTileProviderList:Ljava/util/List;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/d/a/a;->a:Lcom/ifengyu/intercom/ui/map/d/a/g;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(DDI)Lcom/ifengyu/intercom/ui/map/TilePoint;
    .locals 14

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, p4, -0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v4, p2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p0

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v3, p4, -0x1

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v4, v12, v4

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v10

    sub-double v4, v8, v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    new-instance v4, Lcom/ifengyu/intercom/ui/map/TilePoint;

    move/from16 v0, p4

    invoke-direct {v4, v2, v3, v0}, Lcom/ifengyu/intercom/ui/map/TilePoint;-><init>(III)V

    return-object v4
.end method

.method public static a(Lcom/ifengyu/intercom/greendao/bean/a;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->c()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->d()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/bean/a;->e()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;
    .locals 8

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(DDI)Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, p2}, Lcom/ifengyu/intercom/ui/map/d/a/a;->a(DDI)Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v0

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v0

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v4

    new-array v5, v0, [Lcom/ifengyu/intercom/ui/map/TilePoint;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v0

    :goto_0
    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v1

    :goto_1
    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v6

    if-gt v1, v6, :cond_0

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/TilePoint;->a()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/map/TilePoint;->b()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    new-instance v7, Lcom/ifengyu/intercom/ui/map/TilePoint;

    invoke-direct {v7, v1, v0, p2}, Lcom/ifengyu/intercom/ui/map/TilePoint;-><init>(III)V

    aput-object v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method
