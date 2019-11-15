.class public Lcom/amap/api/mapcore/util/dk;
.super Ljava/lang/Object;
.source "BaseTileProvider.java"

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/dk$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/hu;

.field b:Ljava/util/Random;

.field private final c:I

.field private final d:I

.field private e:Lcom/autonavi/amap/mapcore/MapConfig;


# direct methods
.method public constructor <init>(IILcom/autonavi/amap/mapcore/MapConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dk;->b:Ljava/util/Random;

    iput p1, p0, Lcom/amap/api/mapcore/util/dk;->c:I

    iput p2, p0, Lcom/amap/api/mapcore/util/dk;->d:I

    iput-object p3, p0, Lcom/amap/api/mapcore/util/dk;->e:Lcom/autonavi/amap/mapcore/MapConfig;

    return-void
.end method

.method private a(IIILjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/dk$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/dk$a;-><init>(Lcom/amap/api/mapcore/util/dk;IIILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/amap/api/mapcore/util/hu;->a(Z)Lcom/amap/api/mapcore/util/hu;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/dk;->a:Lcom/amap/api/mapcore/util/hu;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dk;->a:Lcom/amap/api/mapcore/util/hu;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/hu;->d(Lcom/amap/api/mapcore/util/hv;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dk;->e:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dk;->e:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore/util/dk;->a(IIILjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore/util/dk;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "zh_cn"

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/amap/api/mapcore/util/dk;->c:I

    iget v2, p0, Lcom/amap/api/mapcore/util/dk;->d:I

    invoke-static {v1, v2, v0}, Lcom/amap/api/maps/model/Tile;->obtain(II[B)Lcom/amap/api/maps/model/Tile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/amap/api/mapcore/util/dk;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    goto :goto_1
.end method

.method public getTileHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/dk;->d:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/dk;->c:I

    return v0
.end method
