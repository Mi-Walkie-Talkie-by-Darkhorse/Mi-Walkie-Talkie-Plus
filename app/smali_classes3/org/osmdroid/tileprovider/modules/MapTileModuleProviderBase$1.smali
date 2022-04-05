.class Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/osmdroid/tileprovider/MapTile;",
        "Lorg/osmdroid/tileprovider/MapTileRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5995f716368a7532L


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

.field final synthetic val$pPendingQueueSize:I


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;IFZI)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iput p5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/MapTile;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/MapTileRequestState;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v1, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(Lorg/osmdroid/tileprovider/MapTile;)V

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
