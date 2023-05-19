.class Lcom/xiaomi/push/dg;
.super Lcom/xiaomi/push/an$b;


# instance fields
.field a:Lcom/xiaomi/push/an$b;

.field final synthetic a:Lcom/xiaomi/push/de;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/de;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/de;

    invoke-direct {p0}, Lcom/xiaomi/push/an$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/de;

    invoke-static {v0}, Lcom/xiaomi/push/de;->a(Lcom/xiaomi/push/de;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/de$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/push/de$b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/de;

    invoke-static {v1}, Lcom/xiaomi/push/de;->a(Lcom/xiaomi/push/de;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/an$b;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/an$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/push/an$b;->b()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/an$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/an$b;->c()V

    :cond_0
    return-void
.end method
