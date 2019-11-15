.class Lcom/xiaomi/channel/commonutils/misc/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/channel/commonutils/misc/i$b;

.field final synthetic b:Lcom/xiaomi/channel/commonutils/misc/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/misc/i;Lcom/xiaomi/channel/commonutils/misc/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/k;->b:Lcom/xiaomi/channel/commonutils/misc/i;

    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/misc/k;->a:Lcom/xiaomi/channel/commonutils/misc/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/k;->b:Lcom/xiaomi/channel/commonutils/misc/i;

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/k;->a:Lcom/xiaomi/channel/commonutils/misc/i$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/i;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V

    return-void
.end method
