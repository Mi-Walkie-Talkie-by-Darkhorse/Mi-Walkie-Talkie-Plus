.class Lcom/xiaomi/push/service/ag;
.super Lcom/xiaomi/push/service/bu$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic a:Lcom/xiaomi/push/service/r;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/r;)V
    .locals 0

    iput-object p4, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p5, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/r;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/bu$a;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method a(Lcom/xiaomi/push/service/bu;)V
    .locals 5

    const-string v0, "GAID"

    const-string v1, "gaid"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/service/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/push/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0, v1, v3}, Lcom/xiaomi/push/service/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/push/iu;

    invoke-direct {p1}, Lcom/xiaomi/push/iu;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/r;

    iget-object v0, v0, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object v0, Lcom/xiaomi/push/if;->g:Lcom/xiaomi/push/if;

    iget-object v0, v0, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/r;

    iget-object v1, v1, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/push/service/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    :cond_0
    return-void
.end method
