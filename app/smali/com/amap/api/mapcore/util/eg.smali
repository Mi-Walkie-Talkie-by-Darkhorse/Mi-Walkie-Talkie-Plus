.class public Lcom/amap/api/mapcore/util/eg;
.super Lcom/amap/api/mapcore/util/eh;
.source "ImageFetcher.java"


# instance fields
.field private e:Lcom/amap/api/maps/model/TileProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/eh;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eg;->e:Lcom/amap/api/maps/model/TileProvider;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eg;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eg;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private c(Lcom/amap/api/mapcore/util/cv$a;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eg;->e:Lcom/amap/api/maps/model/TileProvider;

    iget v2, p1, Lcom/amap/api/mapcore/util/cv$a;->a:I

    iget v3, p1, Lcom/amap/api/mapcore/util/cv$a;->b:I

    iget v4, p1, Lcom/amap/api/mapcore/util/cv$a;->c:I

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/maps/model/TileProvider;->getTile(III)Lcom/amap/api/maps/model/Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    if-eq v1, v2, :cond_0

    iget-object v2, v1, Lcom/amap/api/maps/model/Tile;->data:[B

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/amap/api/maps/model/Tile;->data:[B

    array-length v1, v1

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    check-cast p1, Lcom/amap/api/mapcore/util/cv$a;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eg;->c(Lcom/amap/api/mapcore/util/cv$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/TileProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/eg;->e:Lcom/amap/api/maps/model/TileProvider;

    return-void
.end method
