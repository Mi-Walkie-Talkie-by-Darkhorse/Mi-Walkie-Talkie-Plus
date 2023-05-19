.class public interface abstract Lcom/amap/api/maps/model/TileProvider;
.super Ljava/lang/Object;
.source "TileProvider.java"


# static fields
.field public static final NO_TILE:Lcom/amap/api/maps/model/Tile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v0, v1}, Lcom/amap/api/maps/model/Tile;->obtain(II[B)Lcom/amap/api/maps/model/Tile;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    return-void
.end method


# virtual methods
.method public abstract getTile(III)Lcom/amap/api/maps/model/Tile;
.end method

.method public abstract getTileHeight()I
.end method

.method public abstract getTileWidth()I
.end method
