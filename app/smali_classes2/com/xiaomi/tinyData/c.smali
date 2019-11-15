.class public Lcom/xiaomi/tinyData/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/xiaomi/tinyData/d;

.field b:Lcom/xiaomi/xmpush/thrift/e;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/tinyData/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/tinyData/c;->a:Lcom/xiaomi/tinyData/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    const-string v2, "push_sdk_channel"

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/e;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Lcom/xiaomi/push/service/ay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/e;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/e;->b(J)Lcom/xiaomi/xmpush/thrift/e;

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->a:Lcom/xiaomi/tinyData/d;

    invoke-virtual {v0}, Lcom/xiaomi/tinyData/d;->b()Lcom/xiaomi/tinyData/e;

    move-result-object v4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->a:Lcom/xiaomi/tinyData/d;

    invoke-virtual {v0}, Lcom/xiaomi/tinyData/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v2, "No network"

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    const-string v2, "mUploader is null"

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    iget-object v6, p0, Lcom/xiaomi/tinyData/c;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/xiaomi/tinyData/e;->a(Lcom/xiaomi/xmpush/thrift/e;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "mUploader refuse upload"

    move-object v2, v0

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A tinyData is added to pending list. Pending Reason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->a:Lcom/xiaomi/tinyData/d;

    iget-object v1, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    iget-object v2, p0, Lcom/xiaomi/tinyData/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/tinyData/d;->a(Lcom/xiaomi/xmpush/thrift/e;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A tinyData is uploaded immediately."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/xiaomi/tinyData/c;->c:Ljava/lang/String;

    :cond_5
    new-array v1, v1, [Lcom/xiaomi/xmpush/thrift/e;

    iget-object v2, p0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/tinyData/c;->c:Ljava/lang/String;

    invoke-interface {v4, v1, v2, v0}, Lcom/xiaomi/tinyData/e;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v0, v3

    goto/16 :goto_0
.end method
