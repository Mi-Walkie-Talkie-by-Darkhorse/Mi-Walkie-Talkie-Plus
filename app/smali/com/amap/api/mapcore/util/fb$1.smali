.class Lcom/amap/api/mapcore/util/fb$1;
.super Landroid/os/Handler;
.source "OfflineChild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/fb;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/fb;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fb$1;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/fb$1;->a:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v2, v0, v1}, Lcom/amap/api/mapcore/util/fb;->a(Lcom/amap/api/mapcore/util/fb;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
