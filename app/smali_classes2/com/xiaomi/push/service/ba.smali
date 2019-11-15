.class Lcom/xiaomi/push/service/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/f;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/ba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/slim/b;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/ba;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$c;

    iget-object v2, p0, Lcom/xiaomi/push/service/ba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    return-void
.end method

.method public b(Lcom/xiaomi/smack/packet/d;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/ba;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$j;

    iget-object v2, p0, Lcom/xiaomi/push/service/ba;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/d;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    return-void
.end method
