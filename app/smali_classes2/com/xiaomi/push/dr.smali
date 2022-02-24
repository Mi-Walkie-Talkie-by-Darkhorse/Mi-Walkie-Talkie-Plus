.class Lcom/xiaomi/push/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/dq;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/dr;->a:Lcom/xiaomi/push/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dr;->a:Lcom/xiaomi/push/dq;

    invoke-static {v0}, Lcom/xiaomi/push/dq;->a(Lcom/xiaomi/push/dq;)V

    return-void
.end method
