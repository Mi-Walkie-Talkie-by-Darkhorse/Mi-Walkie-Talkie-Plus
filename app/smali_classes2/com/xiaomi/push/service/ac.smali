.class Lcom/xiaomi/push/service/ac;
.super Lcom/xiaomi/push/service/XMPushService$j;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ir;

.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/ir;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/ac;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/ac;->a:Lcom/xiaomi/push/ir;

    iput-object p4, p0, Lcom/xiaomi/push/service/ac;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/ac;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "send wrong message ack for message."

    return-object v0
.end method

.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ac;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/ac;->a:Lcom/xiaomi/push/ir;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/w;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Lcom/xiaomi/push/ir;

    move-result-object v0

    iget-object v1, v0, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    const-string v2, "error"

    iget-object v3, p0, Lcom/xiaomi/push/service/ac;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/ii;

    const-string v2, "reason"

    iget-object v3, p0, Lcom/xiaomi/push/service/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ac;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/ir;)V
    :try_end_0
    .catch Lcom/xiaomi/push/gu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ac;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
