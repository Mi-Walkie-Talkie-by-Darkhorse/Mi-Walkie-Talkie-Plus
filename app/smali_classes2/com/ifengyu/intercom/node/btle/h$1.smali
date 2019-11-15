.class Lcom/ifengyu/intercom/node/btle/h$1;
.super Ljava/lang/Object;
.source "DataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/btle/h;->f([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/btle/h;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/btle/h;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h$1;->a:Lcom/ifengyu/intercom/node/btle/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h$1;->a:Lcom/ifengyu/intercom/node/btle/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/btle/h;->a(Lcom/ifengyu/intercom/node/btle/h;)[B

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h$1;->a:Lcom/ifengyu/intercom/node/btle/h;

    invoke-static {v3}, Lcom/ifengyu/intercom/node/btle/h;->a(Lcom/ifengyu/intercom/node/btle/h;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming DolphinCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DataReceiver"

    const-string v2, "notifying message transports"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    const-string v3, "12345"

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "DataReceiver"

    const-string v3, "parse protobuf error!!!"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
