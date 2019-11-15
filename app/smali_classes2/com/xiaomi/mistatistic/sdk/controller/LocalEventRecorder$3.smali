.class final Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    const-string v0, "LER"

    const-string v1, "IStatService connected"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/xmsf/push/service/b$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Z)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c()Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c()Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->valueToJSon()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/xiaomi/xmsf/push/service/b;->a(Ljava/lang/String;)V

    const-string v0, "LER"

    const-string v3, "insert a reserved event into IStatService"

    invoke-static {v0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string v0, "LER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending eventList size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_2
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "LER"

    const-string v1, "IStatService has unexpectedly disconnected"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Z)Z

    return-void
.end method
