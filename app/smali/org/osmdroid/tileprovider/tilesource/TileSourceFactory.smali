.class public Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;
.super Ljava/lang/Object;
.source "TileSourceFactory.java"


# static fields
.field public static final BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field private static mTileSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/16 v4, 0x100

    const/4 v13, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "Mapnik"

    const/16 v3, 0x13

    const-string v5, ".png"

    new-array v6, v15, [Ljava/lang/String;

    const-string v7, "http://a.tile.openstreetmap.org/"

    aput-object v7, v6, v2

    const-string v7, "http://b.tile.openstreetmap.org/"

    aput-object v7, v6, v13

    const-string v7, "http://c.tile.openstreetmap.org/"

    aput-object v7, v6, v14

    const-string v7, "\u00a9 OpenStreetMap contributors"

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "CycleMap"

    const/16 v3, 0x11

    const-string v5, ".png"

    new-array v6, v15, [Ljava/lang/String;

    const-string v7, "http://a.tile.opencyclemap.org/cycle/"

    aput-object v7, v6, v2

    const-string v7, "http://b.tile.opencyclemap.org/cycle/"

    aput-object v7, v6, v13

    const-string v7, "http://c.tile.opencyclemap.org/cycle/"

    aput-object v7, v6, v14

    const-string v7, "Maps \u00a9 Thunderforest, Data \u00a9 OpenStreetMap contributors."

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "OSMPublicTransport"

    const/16 v3, 0x11

    const-string v5, ".png"

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "http://openptmap.org/tiles/"

    aput-object v7, v6, v2

    const-string v7, "\u00a9 OpenStreetMap contributors"

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v1, "CloudMadeStandardTiles"

    const/16 v3, 0x12

    const-string v5, ".png"

    new-array v6, v15, [Ljava/lang/String;

    const-string v7, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v7, v6, v2

    const-string v7, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v7, v6, v13

    const-string v7, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v7, v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    const-string v6, "CloudMadeSmallTiles"

    const/16 v8, 0x15

    const/16 v9, 0x40

    const-string v10, ".png"

    new-array v11, v15, [Ljava/lang/String;

    const-string v0, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v2

    const-string v0, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v13

    const-string v0, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v0, v11, v14

    move v7, v2

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "Fiets"

    const/16 v8, 0x12

    const-string v10, ".png"

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, "http://overlay.openstreetmap.nl/openfietskaart-overlay/"

    aput-object v0, v11, v2

    const-string v12, "\u00a9 OpenStreetMap contributors"

    move v7, v15

    move v9, v4

    invoke-direct/range {v5 .. v12}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "BaseNL"

    const/16 v3, 0x12

    const-string v5, ".png"

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "http://overlay.openstreetmap.nl/basemap/"

    aput-object v7, v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "RoadsNL"

    const/16 v3, 0x12

    const-string v5, ".png"

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "http://overlay.openstreetmap.nl/roads/"

    aput-object v7, v6, v2

    const-string v7, "\u00a9 OpenStreetMap contributors"

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "HikeBikeMap"

    const/16 v3, 0x12

    const-string v5, ".png"

    new-array v6, v15, [Ljava/lang/String;

    const-string v7, "http://a.tiles.wmflabs.org/hikebike/"

    aput-object v7, v6, v2

    const-string v7, "http://b.tiles.wmflabs.org/hikebike/"

    aput-object v7, v6, v13

    const-string v7, "http://c.tiles.wmflabs.org/hikebike/"

    aput-object v7, v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "OpenSeaMap"

    const/16 v8, 0x12

    const-string v10, ".png"

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, "http://tiles.openseamap.org/seamark/"

    aput-object v0, v11, v2

    const-string v12, "OpenSeaMap"

    move v7, v15

    move v9, v4

    invoke-direct/range {v5 .. v12}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;

    const-string v1, "USGS National Map Topo"

    const/16 v3, 0xf

    const-string v5, ""

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/"

    aput-object v7, v6, v2

    const-string v7, "USGS"

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;

    const-string v1, "USGS National Map Sat"

    const/16 v3, 0xf

    const-string v5, ""

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/"

    aput-object v7, v6, v2

    const-string v7, "USGS"

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "ChartbundleWAC"

    const/4 v7, 0x4

    const/16 v8, 0xc

    const-string v10, ".png?type=google"

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, "http://wms.chartbundle.com/tms/v1.0/wac/"

    aput-object v0, v11, v2

    const-string v12, "chartbundle.com"

    move v9, v4

    invoke-direct/range {v5 .. v12}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "ChartbundleENRH"

    const/4 v7, 0x4

    const/16 v8, 0xc

    const-string v10, ".png?type=google"

    new-array v11, v14, [Ljava/lang/String;

    const-string v0, "http://wms.chartbundle.com/tms/v1.0/enrh/"

    aput-object v0, v11, v2

    const-string v0, "chartbundle.com"

    aput-object v0, v11, v13

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v6, "ChartbundleENRL"

    const/4 v7, 0x4

    const/16 v8, 0xc

    const-string v10, ".png?type=google"

    new-array v11, v14, [Ljava/lang/String;

    const-string v0, "http://wms.chartbundle.com/tms/v1.0/enrl/"

    aput-object v0, v11, v2

    const-string v0, "chartbundle.com"

    aput-object v0, v11, v13

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v1, "OpenTopoMap"

    const/16 v3, 0x13

    const-string v5, ".png"

    new-array v6, v13, [Ljava/lang/String;

    const-string v7, "https://opentopomap.org/"

    aput-object v7, v6, v2

    const-string v7, "Kartendaten: \u00a9 OpenStreetMap-Mitwirkende, SRTM | Kartendarstellung: \u00a9 OpenTopoMap (CC-BY-SA)"

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static containsTileSource(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTileSource(I)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tile source at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such tile source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    return-object v0
.end method
