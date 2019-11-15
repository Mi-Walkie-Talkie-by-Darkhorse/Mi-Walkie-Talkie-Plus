.class Lcom/xiaomi/push/service/bk;
.super Lcom/xiaomi/push/service/XMPushService$h;


# instance fields
.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/bk;->e:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lcom/xiaomi/push/service/bk;->b:I

    iput-object p4, p0, Lcom/xiaomi/push/service/bk;->c:[B

    iput-object p5, p0, Lcom/xiaomi/push/service/bk;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/bk;->e:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()Lcom/xiaomi/push/service/am;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/push/service/bk;->b:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/a;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bk;->e:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/b;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/smack/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bk;->e:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/bk;->c:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/bk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "clear account cache."

    return-object v0
.end method
