.class final Lcom/amap/api/col/sl/d$b;
.super Landroid/os/HandlerThread;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/sl/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/col/sl/d;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/d$b;->a:Lcom/amap/api/col/sl/d;

    iput-object p2, p0, Lcom/amap/api/col/sl/d$b;->a:Lcom/amap/api/col/sl/d;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d$b;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, v0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/i;->a()V

    iget-object v0, p0, Lcom/amap/api/col/sl/d$b;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->c(Lcom/amap/api/col/sl/d;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
