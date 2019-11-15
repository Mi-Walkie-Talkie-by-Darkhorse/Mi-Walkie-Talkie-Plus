.class Lcom/xiaomi/push/service/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/push/service/bi;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/bi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/bj;->d:Lcom/xiaomi/push/service/bi;

    iput-object p2, p0, Lcom/xiaomi/push/service/bj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/push/service/bj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/bj;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/push/service/bj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/bj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/module/b;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->e()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/push/service/bj;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->a()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/push/service/bj;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/g;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMPushService remove some geofence message failed. message_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->d()[B

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "Geo canBeShownMessage content null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/push/service/u;->a([BJ)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "Geo canBeShownMessage intent null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/push/service/bj;->d:Lcom/xiaomi/push/service/bi;

    iget-object v4, v4, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Lcom/xiaomi/push/service/u;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BLandroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/xiaomi/push/service/bj;->d:Lcom/xiaomi/push/service/bi;

    iget-object v2, v2, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/g;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show some exit geofence message. then remove this message failed. message_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
