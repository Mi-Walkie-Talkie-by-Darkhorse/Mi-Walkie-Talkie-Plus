.class public Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;
.source "BingMapTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_URL_PATTERN:Ljava/lang/String; = "http://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&key=%s"

.field private static final BING_KEY:Ljava/lang/String; = "BING_KEY"

.field private static final FILENAME_ENDING:Ljava/lang/String; = ".jpeg"

.field public static final IMAGERYSET_AERIAL:Ljava/lang/String; = "Aerial"

.field public static final IMAGERYSET_AERIALWITHLABELS:Ljava/lang/String; = "AerialWithLabels"

.field public static final IMAGERYSET_ROAD:Ljava/lang/String; = "Road"

.field private static mBingMapKey:Ljava/lang/String;


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

.field private mLocale:Ljava/lang/String;

.field private mStyle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v1, "BingMaps"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".jpeg"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    const-string v0, "Road"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getBingKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-object v0
.end method

.method private getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 7

    const/4 v1, 0x0

    const-string v0, "OsmDroid"

    const-string v2, "getMetaData"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&key=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const-string v2, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get response for url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    const-string v0, "OsmDroid"

    const-string v2, "end getMetaData"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {v2, v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaData;->getInstanceFromJSON(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    const-string v0, "OsmDroid"

    const-string v2, "end getMetaData"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_5
    const-string v3, "OsmDroid"

    const-string v4, "Error getting imagery meta data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    const-string v0, "OsmDroid"

    const-string v2, "end getMetaData"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_6
    const-string v1, "OsmDroid"

    const-string v2, "end getMetaData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3
.end method

.method public static retrieveBingKey(Landroid/content/Context;)V
    .locals 1

    const-string v0, "BING_KEY"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method

.method public static setBingKey(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightNotice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    return v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getTileSizePixels()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    return v0
.end method

.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->quadTree(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getTileSizePixels()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->updateBaseUrl()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->setStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->pathBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected updateBaseUrl()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "OsmDroid"

    const-string v1, "updateBaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getSubDomain()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "%s"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    :cond_0
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OsmDroid"

    const-string v1, "end updateBaseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method
