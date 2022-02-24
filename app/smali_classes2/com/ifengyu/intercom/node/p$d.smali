.class Lcom/ifengyu/intercom/node/p$d;
.super Landroid/os/Handler;
.source "WalkTalkTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/p;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/node/transport/j;

    const-string v0, "TxWdtHandler"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/transport/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write is stuck. Killing thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/ifengyu/intercom/node/transport/j;->a:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "stuck while writing"

    .line 4
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/transport/j;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/transport/j;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "Write is not stuck. No action needed."

    .line 6
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
