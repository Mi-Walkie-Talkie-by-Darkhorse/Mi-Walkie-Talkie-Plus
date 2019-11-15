.class final Lcom/amap/api/col/sl/e$b;
.super Landroid/os/HandlerThread;
.source "APSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/e;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/e$b;->a:Lcom/amap/api/col/sl/e;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e$b;->a:Lcom/amap/api/col/sl/e;

    new-instance v1, Lcom/amap/api/col/sl/i;

    iget-object v2, p0, Lcom/amap/api/col/sl/e$b;->a:Lcom/amap/api/col/sl/e;

    iget-object v2, v2, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/col/sl/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Lcom/amap/api/col/sl/i;)Lcom/amap/api/col/sl/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e$b;->a:Lcom/amap/api/col/sl/e;

    new-instance v1, Lcom/amap/api/col/sl/er;

    invoke-direct {v1}, Lcom/amap/api/col/sl/er;-><init>()V

    iput-object v1, v0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
