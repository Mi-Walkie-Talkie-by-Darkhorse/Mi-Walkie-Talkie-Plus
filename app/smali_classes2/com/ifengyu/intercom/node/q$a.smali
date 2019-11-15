.class Lcom/ifengyu/intercom/node/q$a;
.super Landroid/os/Handler;
.source "WalkTalkTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/q;

.field private b:Lcom/ifengyu/intercom/node/q;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/q;Lcom/ifengyu/intercom/node/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q$a;->a:Lcom/ifengyu/intercom/node/q;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/node/q$a;->b:Lcom/ifengyu/intercom/node/q;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/transport/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/transport/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TxWdtHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write is stuck. Killing thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/ifengyu/intercom/node/transport/j;->a:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "stuck while writing"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/transport/j;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/transport/j;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "TxWdtHandler"

    const-string v1, "Write is not stuck. No action needed."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
