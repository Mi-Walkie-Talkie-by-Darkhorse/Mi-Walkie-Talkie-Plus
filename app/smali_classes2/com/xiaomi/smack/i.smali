.class Lcom/xiaomi/smack/i;
.super Lcom/xiaomi/push/service/XMPushService$h;


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/smack/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/h;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smack/i;->c:Lcom/xiaomi/smack/h;

    iput-wide p3, p0, Lcom/xiaomi/smack/i;->b:J

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/xiaomi/smack/i;->c:Lcom/xiaomi/smack/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/i;->c:Lcom/xiaomi/smack/h;

    iget-wide v2, p0, Lcom/xiaomi/smack/i;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/smack/h;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/i;->c:Lcom/xiaomi/smack/h;

    iget-object v0, v0, Lcom/xiaomi/smack/h;->s:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/smack/i;->c:Lcom/xiaomi/smack/h;

    iget-object v0, v0, Lcom/xiaomi/smack/h;->s:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check the ping-pong."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/smack/i;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
