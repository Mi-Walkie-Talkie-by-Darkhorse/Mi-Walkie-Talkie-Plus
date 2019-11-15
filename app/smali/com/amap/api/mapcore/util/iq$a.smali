.class public final Lcom/amap/api/mapcore/util/iq$a;
.super Landroid/os/Handler;
.source "MapLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/iq;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/iq;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/iq$a;->a:Lcom/amap/api/mapcore/util/iq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iq$a;->a:Lcom/amap/api/mapcore/util/iq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iq;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
