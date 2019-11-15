.class Lcom/xiaomi/push/service/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/am$b$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/am$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/am$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/an;->a:Lcom/xiaomi/push/service/am$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/am$c;Lcom/xiaomi/push/service/am$c;I)V
    .locals 4

    sget-object v0, Lcom/xiaomi/push/service/am$c;->b:Lcom/xiaomi/push/service/am$c;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/an;->a:Lcom/xiaomi/push/service/am$b;

    invoke-static {v0}, Lcom/xiaomi/push/service/am$b;->b(Lcom/xiaomi/push/service/am$b;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/an;->a:Lcom/xiaomi/push/service/am$b;

    invoke-static {v1}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$b;)Lcom/xiaomi/push/service/XMPushService$b;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/an;->a:Lcom/xiaomi/push/service/am$b;

    invoke-static {v0}, Lcom/xiaomi/push/service/am$b;->b(Lcom/xiaomi/push/service/am$b;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/an;->a:Lcom/xiaomi/push/service/am$b;

    invoke-static {v1}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$b;)Lcom/xiaomi/push/service/XMPushService$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    goto :goto_0
.end method
