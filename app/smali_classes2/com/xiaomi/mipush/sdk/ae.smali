.class public Lcom/xiaomi/mipush/sdk/ae;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/in;

    invoke-direct {v1}, Lcom/xiaomi/push/in;-><init>()V

    sget-object v2, Lcom/xiaomi/push/ib;->a:Lcom/xiaomi/push/ib;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ay;->a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/ib;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/in;->a(I)Lcom/xiaomi/push/in;

    sget-object v2, Lcom/xiaomi/push/ib;->b:Lcom/xiaomi/push/ib;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ay;->a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/ib;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/in;->b(I)Lcom/xiaomi/push/in;

    new-instance v0, Lcom/xiaomi/push/iu;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/push/if;->p:Lcom/xiaomi/push/if;

    iget-object v2, v2, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-static {v1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/iu;->a([B)Lcom/xiaomi/push/iu;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;Lcom/xiaomi/push/ii;)V

    return-void
.end method
