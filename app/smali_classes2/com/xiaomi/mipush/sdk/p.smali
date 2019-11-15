.class public Lcom/xiaomi/mipush/sdk/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/xiaomi/mipush/sdk/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/p;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ah;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ah;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ah;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/ah;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ah;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/c$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/xiaomi/mipush/sdk/c;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/c$a;)V

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/ah;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/ah;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v0, "register"

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/ah;->f:J

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/ah;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/p;->b:Lcom/xiaomi/mipush/sdk/q;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/mipush/sdk/p;->b:Lcom/xiaomi/mipush/sdk/q;

    invoke-virtual {v1, v6, v0}, Lcom/xiaomi/mipush/sdk/q;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v5

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ao;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "unregister"

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/ao;->f:J

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/ao;->g:Ljava/lang/String;

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ao;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/p;->b:Lcom/xiaomi/mipush/sdk/q;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/mipush/sdk/p;->b:Lcom/xiaomi/mipush/sdk/q;

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/mipush/sdk/q;->b(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->b:Lcom/xiaomi/mipush/sdk/q;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->b:Lcom/xiaomi/mipush/sdk/q;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/q;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0
.end method
