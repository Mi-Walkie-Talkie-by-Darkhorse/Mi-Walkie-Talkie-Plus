.class public interface abstract Lorg/osmdroid/tileprovider/modules/IArchiveFile;
.super Ljava/lang/Object;
.source "IArchiveFile.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/InputStream;
.end method

.method public abstract getTileSources()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
