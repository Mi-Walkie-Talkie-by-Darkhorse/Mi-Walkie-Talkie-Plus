.class public Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/XYTileSource;
.source "FileBasedTileSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 8

    const/4 v2, 0x0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;

    const/16 v3, 0x12

    const/16 v4, 0x100

    const-string v5, ".png"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "http://localhost"

    aput-object v7, v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method
