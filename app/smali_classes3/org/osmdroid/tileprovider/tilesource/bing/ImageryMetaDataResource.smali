.class public Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
.super Ljava/lang/Object;
.source "ImageryMetaDataResource.java"


# static fields
.field private static final COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final IMAGE_HEIGHT:Ljava/lang/String; = "imageHeight"

.field private static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final IMAGE_URL_SUBDOMAINS:Ljava/lang/String; = "imageUrlSubdomains"

.field private static final IMAGE_WIDTH:Ljava/lang/String; = "imageWidth"

.field private static final ZOOM_MAX:Ljava/lang/String; = "ZoomMax"

.field private static final ZOOM_MIN:Ljava/lang/String; = "ZoomMin"


# instance fields
.field public copyright:Ljava/lang/String;

.field public m_imageHeight:I

.field public m_imageUrl:Ljava/lang/String;

.field public m_imageUrlSubdomains:[Ljava/lang/String;

.field public m_imageWidth:I

.field public m_isInitialised:Z

.field private m_subdomainsCounter:I

.field public m_zoomMax:I

.field public m_zoomMin:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    iput v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    iput v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    const/16 v0, 0x16

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    return-void
.end method

.method public static getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    return-object v0
.end method

.method public static getInstanceFromJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v1}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "JSON to parse is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "copyright"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    const-string v0, "imageHeight"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "imageHeight"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    :cond_1
    const-string v0, "imageWidth"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "imageWidth"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    :cond_2
    const-string v0, "ZoomMin"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ZoomMin"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    :cond_3
    const-string v0, "ZoomMax"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ZoomMax"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    :cond_4
    const-string v0, "imageUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iget-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v2, ".*?\\{.*?\\}.*?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v2, "\\{.*?\\}"

    const-string v3, "%s"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    :cond_5
    const-string v0, "imageUrlSubdomains"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v5, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput-boolean v5, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    return-object v1
.end method


# virtual methods
.method public declared-synchronized getSubDomain()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
