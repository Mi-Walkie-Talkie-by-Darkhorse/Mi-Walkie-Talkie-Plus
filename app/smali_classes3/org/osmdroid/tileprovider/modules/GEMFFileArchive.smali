.class public Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;
.super Ljava/lang/Object;
.source "GEMFFileArchive.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# instance fields
.field private mFile:Lorg/osmdroid/util/GEMFFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/GEMFFile;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    return-void
.end method

.method public static getGEMFFileArchive(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {v0}, Lorg/osmdroid/util/GEMFFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v1

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/util/GEMFFile;->getInputStream(III)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTileSources()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {v0}, Lorg/osmdroid/util/GEMFFile;->getSources()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "OsmDroid"

    const-string v3, "Error getting tile sources: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public init(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/util/GEMFFile;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GEMFFileArchive [mGEMFFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {v1}, Lorg/osmdroid/util/GEMFFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
