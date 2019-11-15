.class final Lcom/amap/api/mapcore/util/iq$b;
.super Landroid/os/HandlerThread;
.source "MapLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/iq;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/iq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/iq$b;->a:Lcom/amap/api/mapcore/util/iq;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void
.end method
