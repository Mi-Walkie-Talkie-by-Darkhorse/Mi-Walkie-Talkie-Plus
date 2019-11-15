.class public abstract Lcom/amap/api/maps/model/UrlTileProvider;
.super Ljava/lang/Object;
.source "UrlTileProvider.java"

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/maps/model/UrlTileProvider;->a:I

    iput p2, p0, Lcom/amap/api/maps/model/UrlTileProvider;->b:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/amap/api/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/maps/model/UrlTileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/amap/api/maps/model/UrlTileProvider;->a:I

    iget v2, p0, Lcom/amap/api/maps/model/UrlTileProvider;->b:I

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amap/api/maps/model/Tile;->obtain(II[B)Lcom/amap/api/maps/model/Tile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/amap/api/maps/model/UrlTileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    goto :goto_0
.end method

.method public getTileHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/UrlTileProvider;->b:I

    return v0
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method

.method public getTileWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/UrlTileProvider;->a:I

    return v0
.end method
