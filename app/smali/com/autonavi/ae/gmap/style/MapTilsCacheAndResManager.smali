.class public abstract Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;
.super Ljava/lang/Object;
.source "MapTilsCacheAndResManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;
    }
.end annotation


# static fields
.field public static final ICONS_BIG_DATA:I = 0x3

.field public static final ICONS_DATA:I = 0x2

.field public static final ICONS_INDOOR_DATA:I = 0x5

.field public static final ICONS_OPENLAYER_DATA:I = 0x8

.field public static final ICONS_POLYGON_DATA:I = 0x6

.field public static final MAP_MAP_ASSETS_NAME:Ljava/lang/String; = "map_assets"

.field public static final MAP_RES_EXT_PATH_NAME:Ljava/lang/String; = "vmap4res"

.field public static final STYLE_DATA:I = 0x1

.field public static final STYLE_INDOOR_DATA:I = 0x4

.field public static final STYLE_OPENLAYER_DATA:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addUdateRecorder(Ljava/lang/String;)V
.end method

.method public abstract canUpate(Ljava/lang/String;)Z
.end method

.method public abstract checkDir()V
.end method

.method public abstract getIconsData(Ljava/lang/String;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
.end method

.method public abstract getMapCachePath()Ljava/lang/String;
.end method

.method public abstract getOtherResData(Ljava/lang/String;)[B
.end method

.method public abstract getOtherResDataFromDisk(Ljava/lang/String;)[B
.end method

.method public abstract getPolyIconFilePath(Ljava/lang/String;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
.end method

.method public abstract getStyleData(Ljava/lang/String;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
.end method

.method public abstract saveFile(Ljava/lang/String;II[B)V
.end method

.method public abstract setMapCachePath(Ljava/lang/String;)V
.end method
