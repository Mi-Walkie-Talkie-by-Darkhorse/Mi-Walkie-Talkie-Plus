.class Lcom/ifengyu/intercom/node/btle/h$a;
.super Ljava/lang/Object;
.source "DataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/btle/h;->d([B)V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h$a;->a:Lcom/ifengyu/intercom/node/btle/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DataReceiver"

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h$a;->a:Lcom/ifengyu/intercom/node/btle/h;

    invoke-static {v2}, Lcom/ifengyu/intercom/node/btle/h;->a(Lcom/ifengyu/intercom/node/btle/h;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h$a;->a:Lcom/ifengyu/intercom/node/btle/h;

    invoke-static {v4}, Lcom/ifengyu/intercom/node/btle/h;->a(Lcom/ifengyu/intercom/node/btle/h;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "parse protobuf error!!!"

    .line 3
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming DolphinCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "notifying message transports"

    .line 7
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/node/g;

    .line 9
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v3

    const-string v4, "12345"

    invoke-interface {v2, v4, v3}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    goto :goto_1

    :cond_1
    return-void
.end method
