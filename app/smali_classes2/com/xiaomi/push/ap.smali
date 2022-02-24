.class Lcom/xiaomi/push/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/an$b;

.field final synthetic a:Lcom/xiaomi/push/an;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/an;Lcom/xiaomi/push/an$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/ap;->a:Lcom/xiaomi/push/an;

    iput-object p2, p0, Lcom/xiaomi/push/ap;->a:Lcom/xiaomi/push/an$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/ap;->a:Lcom/xiaomi/push/an;

    iget-object v1, p0, Lcom/xiaomi/push/ap;->a:Lcom/xiaomi/push/an$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an$b;)V

    return-void
.end method
