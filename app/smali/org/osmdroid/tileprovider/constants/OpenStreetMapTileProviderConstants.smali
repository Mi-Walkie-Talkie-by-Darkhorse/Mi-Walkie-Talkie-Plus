.class public Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;
.super Ljava/lang/Object;
.source "OpenStreetMapTileProviderConstants.java"


# static fields
.field public static final DEFAULT_MAXIMUM_CACHED_FILE_AGE:J = 0x240c8400L

.field public static final HTTP_EXPIRES_HEADER:Ljava/lang/String; = "Expires"

.field public static final HTTP_EXPIRES_HEADER_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss z"

.field public static final MINIMUM_ZOOMLEVEL:I = 0x0

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final ONE_WEEK:J = 0x240c8400L

.field public static final ONE_YEAR:J = 0x757b12c00L

.field private static OSMDROID_PATH:Ljava/io/File; = null

.field public static final TILE_EXPIRY_TIME_MILLISECONDS:J = 0x9a7ec800L

.field public static final TILE_PATH_EXTENSION:Ljava/lang/String; = ".tile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osmdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->OSMDROID_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBasePath()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgentValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setUserAgentValue(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/osmdroid/config/IConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    return-void
.end method
