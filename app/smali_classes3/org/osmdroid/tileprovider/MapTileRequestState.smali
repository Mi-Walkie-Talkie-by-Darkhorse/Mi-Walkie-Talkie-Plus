.class public Lorg/osmdroid/tileprovider/MapTileRequestState;
.super Ljava/lang/Object;
.source "MapTileRequestState.java"


# instance fields
.field private final mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

.field private mCurrentProvider:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

.field private final mMapTile:Lorg/osmdroid/tileprovider/MapTile;

.field private final mProviderQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTile;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/Queue;

    .line 3
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mMapTile:Lorg/osmdroid/tileprovider/MapTile;

    .line 5
    iput-object p3, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    return-object v0
.end method

.method public getCurrentProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCurrentProvider:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    return-object v0
.end method

.method public getMapTile()Lorg/osmdroid/tileprovider/MapTile;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mMapTile:Lorg/osmdroid/tileprovider/MapTile;

    return-object v0
.end method

.method public getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCurrentProvider:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method
