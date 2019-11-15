.class final Lcom/amap/api/mapcore/util/ix$a;
.super Landroid/os/HandlerThread;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ix;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/ix;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ix;->a(Lcom/amap/api/mapcore/util/ix;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ix;->b(Lcom/amap/api/mapcore/util/ix;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ix;->c(Lcom/amap/api/mapcore/util/ix;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ix;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ix;->g:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ix$a;->a:Lcom/amap/api/mapcore/util/ix;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/ix;->g:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ix$a;->quit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
