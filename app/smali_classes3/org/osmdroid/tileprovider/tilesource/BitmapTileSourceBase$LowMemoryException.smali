.class public final Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
.super Ljava/lang/Exception;
.source "BitmapTileSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowMemoryException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2089118ea6c888eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
