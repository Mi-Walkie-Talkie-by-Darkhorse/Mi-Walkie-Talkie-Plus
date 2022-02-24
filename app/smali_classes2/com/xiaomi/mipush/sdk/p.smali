.class Lcom/xiaomi/mipush/sdk/p;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/iu;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/iu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p;->a:Lcom/xiaomi/push/iu;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/p;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "22"

    return-object v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->a:Lcom/xiaomi/push/iu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->a:Lcom/xiaomi/push/iu;

    sget-object v3, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;Z)V

    :cond_0
    return-void
.end method
