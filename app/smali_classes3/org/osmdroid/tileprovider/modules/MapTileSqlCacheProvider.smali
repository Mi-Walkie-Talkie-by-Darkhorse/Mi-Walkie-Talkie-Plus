.class public Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.source "MapTileSqlCacheProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;
    }
.end annotation


# static fields
.field private static final columns:[Ljava/lang/String;

.field private static final tile:[Ljava/lang/String;


# instance fields
.field private final mMaximumCachedFileAge:J

.field private final mTileSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field

.field private mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "tile"

    aput-object v1, v0, v2

    sput-object v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->tile:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tile"

    aput-object v1, v0, v2

    const-string v1, "expires"

    aput-object v1, v0, v3

    sput-object v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2

    const-wide/32 v0, 0x240c8400

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)V
    .locals 3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-wide p3, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mMaximumCachedFileAge:J

    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mMaximumCachedFileAge:J

    return-wide v0
.end method


# virtual methods
.method public detach()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->onDetach()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->detach()V

    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMinimumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SQL Cache Archive Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "sqlcache"

    return-object v0
.end method

.method protected getTileLoader()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)V

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTile(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 14

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-nez v3, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v2

    int-to-long v10, v2

    long-to-int v2, v10

    shl-long v12, v10, v2

    add-long/2addr v0, v12

    long-to-int v2, v10

    shl-long/2addr v0, v2

    add-long/2addr v6, v0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tiles"

    sget-object v2, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->columns:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and provider = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_0
.end method

.method protected onMediaMounted()V
    .locals 0

    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->onDetach()V

    :cond_0
    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
