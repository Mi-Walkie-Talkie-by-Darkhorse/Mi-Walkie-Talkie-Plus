.class public Lcom/ifengyu/intercom/ui/map/f/a/g;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/f/a/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/map/f/a/g;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/IArchiveFile;)V
    .locals 2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/map/f/a/g;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->c:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/f/a/g;->findArchiveFiles()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->c:Z

    array-length p2, p3

    sub-int/2addr p2, p1

    :goto_0
    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    aget-object v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/f/a/g;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private findArchiveFiles()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->isSdCardAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->close()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->detach()V

    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMaximumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "File Archive Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "filearchive"

    return-object v0
.end method

.method protected getTileLoader()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/g$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/f/a/g$a;-><init>(Lcom/ifengyu/intercom/ui/map/f/a/g;)V

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMediaMounted()V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/f/a/g;->findArchiveFiles()V

    :cond_0
    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/f/a/g;->findArchiveFiles()V

    :cond_0
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
