.class public Lcom/xiaomi/push/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/co;->a(Ljava/lang/String;)J

    move-result-wide v1

    sget-wide v3, Lcom/xiaomi/push/ca;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/push/ce;->a(Ljava/lang/String;)Lcom/xiaomi/push/ce;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/push/cd;->a(Ljava/lang/String;)Lcom/xiaomi/push/cd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ci$a;->a(Lcom/xiaomi/push/ci$a;)V

    iget-object v3, p0, Lcom/xiaomi/push/cb;->a:Ljava/lang/String;

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4}, Lcom/xiaomi/push/cc;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/xiaomi/push/cc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/ci$a;->a(Lcom/xiaomi/push/ci$a;)V

    invoke-static {v0}, Lcom/xiaomi/push/ci;->a(Landroid/content/Context;)Lcom/xiaomi/push/ci;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci$a;)V

    goto :goto_0

    :cond_2
    const-string v0, "=====> do not need clean db"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
