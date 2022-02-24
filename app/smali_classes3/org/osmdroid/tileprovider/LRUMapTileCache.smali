.class public Lorg/osmdroid/tileprovider/LRUMapTileCache;
.super Ljava/util/LinkedHashMap;
.source "LRUMapTileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/osmdroid/tileprovider/MapTile;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7828608cbd546d7L


# instance fields
.field private mCapacity:I

.field private mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x2

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 2
    iput p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    if-le p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile cache increased from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    :cond_0
    return-void
.end method

.method public getTileRemovedListener()Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 4
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->getTileRemovedListener()Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/osmdroid/tileprovider/MapTile;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->getTileRemovedListener()Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    move-result-object v1

    check-cast p1, Lorg/osmdroid/tileprovider/MapTile;

    invoke-interface {v1, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;->onTileRemoved(Lorg/osmdroid/tileprovider/MapTile;)V

    .line 9
    :cond_1
    instance-of p1, v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {p1, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mCapacity:I

    if-le v0, v1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/tileprovider/MapTile;

    .line 3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LRU Remove old tile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->remove(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setTileRemovedListener(Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/tileprovider/LRUMapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/LRUMapTileCache$TileRemovedListener;

    return-void
.end method
