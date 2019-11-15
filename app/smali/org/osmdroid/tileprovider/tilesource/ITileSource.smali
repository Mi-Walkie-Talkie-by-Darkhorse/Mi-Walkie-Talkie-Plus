.class public interface abstract Lorg/osmdroid/tileprovider/tilesource/ITileSource;
.super Ljava/lang/Object;
.source "ITileSource.java"


# virtual methods
.method public abstract getCopyrightNotice()Ljava/lang/String;
.end method

.method public abstract getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation
.end method

.method public abstract getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method public abstract getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
.end method

.method public abstract getTileSizePixels()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract ordinal()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
