.class Lcom/xiaomi/push/service/XMPushService$l;
.super Lcom/xiaomi/push/service/XMPushService$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field b:Lcom/xiaomi/push/service/am$b;

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/am$b;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    sget-object v1, Lcom/xiaomi/push/service/am$c;->a:Lcom/xiaomi/push/service/am$c;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/am$b;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    iget-object v2, v2, Lcom/xiaomi/push/service/am$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    sget-object v1, Lcom/xiaomi/push/service/am$c;->b:Lcom/xiaomi/push/service/am$c;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/am$b;->a(Lcom/xiaomi/push/service/am$c;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/a;->a(Lcom/xiaomi/push/service/am$b;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Lcom/xiaomi/push/service/am$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/am$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
