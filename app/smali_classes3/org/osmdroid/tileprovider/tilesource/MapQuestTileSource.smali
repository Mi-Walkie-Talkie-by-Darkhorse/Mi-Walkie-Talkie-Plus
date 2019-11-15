.class public Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "MapQuestTileSource.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "MAPQUEST_ACCESS_TOKEN"

.field private static final MAPBOX_MAPID:Ljava/lang/String; = "MAPQUEST_MAPID"

.field private static final mapBoxBaseUrl:[Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private mapBoxMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://api.tiles.mapbox.com/v4/"

    aput-object v2, v0, v1

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v1, "MapQuest"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "MapQuest"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->retrieveAccessToken(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->retrieveMapBoxMapId(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapQuest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "MapQuest"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p7, v6, v0

    const-string v7, "MapQuest"

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    iput-object p6, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapQuest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "MapQuest"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMapBoxMapId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->getMapBoxMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveAccessToken(Landroid/content/Context;)V
    .locals 1

    const-string v0, "MAPQUEST_ACCESS_TOKEN"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final retrieveMapBoxMapId(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MAPQUEST_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setMapboxMapid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    return-void
.end method
