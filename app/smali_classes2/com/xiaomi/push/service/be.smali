.class Lcom/xiaomi/push/service/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/bd$b$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/bd$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/bd$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/be;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/bd$c;Lcom/xiaomi/push/service/bd$c;I)V
    .locals 2

    sget-object p1, Lcom/xiaomi/push/service/bd$c;->b:Lcom/xiaomi/push/service/bd$c;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/push/service/be;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-static {p1}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/push/service/be;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-static {p2}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b;)Lcom/xiaomi/push/service/XMPushService$c;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/service/be;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-static {p1}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/push/service/be;->a:Lcom/xiaomi/push/service/bd$b;

    invoke-static {p2}, Lcom/xiaomi/push/service/bd$b;->a(Lcom/xiaomi/push/service/bd$b;)Lcom/xiaomi/push/service/XMPushService$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$j;)V

    :goto_0
    return-void
.end method
