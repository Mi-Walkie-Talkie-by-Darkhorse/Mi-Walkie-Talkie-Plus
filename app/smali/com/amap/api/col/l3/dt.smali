.class public final Lcom/amap/api/col/l3/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/dt$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/ib;

.field b:Ljava/util/Random;

.field private final c:I

.field private final d:I

.field private e:Lcom/autonavi/amap/mapcore/MapConfig;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/dt;->b:Ljava/util/Random;

    const/16 v0, 0x100

    iput v0, p0, Lcom/amap/api/col/l3/dt;->c:I

    iput v0, p0, Lcom/amap/api/col/l3/dt;->d:I

    iput-object p1, p0, Lcom/amap/api/col/l3/dt;->e:Lcom/autonavi/amap/mapcore/MapConfig;

    return-void
.end method

.method private a(IIILjava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v6, Lcom/amap/api/col/l3/dt$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/dt$a;-><init>(Lcom/amap/api/col/l3/dt;IIILjava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/l3/ib;->b()Lcom/amap/api/col/l3/ib;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/dt;->a:Lcom/amap/api/col/l3/ib;

    invoke-static {v6}, Lcom/amap/api/col/l3/ib;->d(Lcom/amap/api/col/l3/ic;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/dt;->e:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/dt;->e:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "zh_cn"

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/col/l3/dt;->a(IIILjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    return-object p1

    :cond_1
    iget p2, p0, Lcom/amap/api/col/l3/dt;->c:I

    iget p3, p0, Lcom/amap/api/col/l3/dt;->d:I

    invoke-static {p2, p3, p1}, Lcom/amap/api/maps/model/Tile;->obtain(II[B)Lcom/amap/api/maps/model/Tile;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    :goto_1
    return-object p1
.end method

.method public final getTileHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dt;->d:I

    return v0
.end method

.method public final getTileWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/dt;->c:I

    return v0
.end method
