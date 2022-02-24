.class public Lcom/ifengyu/intercom/node/k;
.super Ljava/lang/Object;
.source "RxCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ifengyu/intercom/node/p;

.field private final d:Lcom/ifengyu/intercom/node/transport/j;

.field private final e:Lcom/ifengyu/intercom/node/transport/h;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/p;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/d;Lcom/ifengyu/intercom/node/transport/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/k;->e:Lcom/ifengyu/intercom/node/transport/h;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/node/k;->c:Lcom/ifengyu/intercom/node/p;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/node/k;->a:Ljava/io/InputStream;

    .line 5
    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/k;->b:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/ifengyu/intercom/node/k;->d:Lcom/ifengyu/intercom/node/transport/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/k;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "RxCallable"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    check-cast v0, Lcom/ifengyu/intercom/node/n;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v2

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/n;->b()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "reading from peer"

    .line 7
    invoke-static {v1, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 9
    iget-object v3, p0, Lcom/ifengyu/intercom/node/k;->e:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/k;->a:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/ifengyu/intercom/node/k;->d:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v3, v4, v2, v5}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    move-result v3

    if-lez v3, :cond_0

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incoming Command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "notifying message transports"

    .line 12
    invoke-static {v1, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/node/k;->c:Lcom/ifengyu/intercom/node/p;

    iget-object v3, v3, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/node/g;

    .line 14
    iget-object v5, p0, Lcom/ifengyu/intercom/node/k;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    goto :goto_1

    :cond_2
    const-string v3, "reading from peer is done"

    .line 15
    invoke-static {v1, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "RxCallable is finished."

    .line 16
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
