.class public Lcom/ifengyu/intercom/ui/map/f/a/e;
.super Lorg/osmdroid/tileprovider/MapTileProviderArray;

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# instance fields
.field protected a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/content/Context;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/ifengyu/intercom/ui/map/f/a/e;->a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-direct {p4}, Lorg/osmdroid/tileprovider/modules/TileWriter;-><init>()V

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/map/f/a/e;->a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    :goto_0
    new-instance p4, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    invoke-direct {p4, p1, p3}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    iget-object p4, p0, Lcom/ifengyu/intercom/ui/map/f/a/e;->a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-direct {p1, p3, p4, p2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;)V

    iget-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/e;->a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->onDetach()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/e;->a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->detach()V

    return-void
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/e;->a:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    return-object v0
.end method
