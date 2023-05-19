.class Lcom/xiaomi/push/service/ad;
.super Lcom/xiaomi/push/service/XMPushService$j;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ir;

.field final synthetic a:Lcom/xiaomi/push/iu;

.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/iu;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/iu;

    iput-object p3, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/ir;

    iput-object p4, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "send ack message for clear push message."

    return-object v0
.end method

.method public a()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/im;

    invoke-direct {v0}, Lcom/xiaomi/push/im;-><init>()V

    sget-object v1, Lcom/xiaomi/push/if;->D:Lcom/xiaomi/push/if;

    iget-object v1, v1, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/im;->c(Ljava/lang/String;)Lcom/xiaomi/push/im;

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v1}, Lcom/xiaomi/push/iu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/im;->a(Ljava/lang/String;)Lcom/xiaomi/push/im;

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v1}, Lcom/xiaomi/push/iu;->a()Lcom/xiaomi/push/ik;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/im;->a(Lcom/xiaomi/push/ik;)Lcom/xiaomi/push/im;

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v1}, Lcom/xiaomi/push/iu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/im;->b(Ljava/lang/String;)Lcom/xiaomi/push/im;

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/iu;

    invoke-virtual {v1}, Lcom/xiaomi/push/iu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/im;->e(Ljava/lang/String;)Lcom/xiaomi/push/im;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/im;->a(J)Lcom/xiaomi/push/im;

    const-string v1, "success clear push message."

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/im;->d(Ljava/lang/String;)Lcom/xiaomi/push/im;

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/ir;

    invoke-virtual {v1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/ir;

    invoke-virtual {v2}, Lcom/xiaomi/push/ir;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/push/service/af;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/ir;)V
    :try_end_0
    .catch Lcom/xiaomi/push/gu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear push message. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ad;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
