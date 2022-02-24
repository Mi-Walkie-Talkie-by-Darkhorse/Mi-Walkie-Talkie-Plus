.class public Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;
.super Ljava/lang/Exception;
.source "MapTileModuleProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CantContinueException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2089118ea6c888dL


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
