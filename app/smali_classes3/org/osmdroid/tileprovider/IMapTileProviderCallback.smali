.class public interface abstract Lorg/osmdroid/tileprovider/IMapTileProviderCallback;
.super Ljava/lang/Object;
.source "IMapTileProviderCallback.java"


# virtual methods
.method public abstract mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
.end method

.method public abstract useDataConnection()Z
.end method
