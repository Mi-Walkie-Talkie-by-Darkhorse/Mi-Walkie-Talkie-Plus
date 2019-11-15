.class public abstract Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;
.super Ljava/lang/Object;
.source "BaseMiLinkRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Req:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "Rsp:",
        "Lcom/google/protobuf/GeneratedMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mRequest:Lcom/google/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TReq;"
        }
    .end annotation
.end field

.field private mTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mTimeout:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method private checkBeforeSend()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mRequest:Lcom/google/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mRequest is null, do you forget to assign it in constructor?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getRequestPacketData(Z)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 4

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mRequest:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "sync"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " request:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mRequest:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "async"

    goto :goto_0
.end method


# virtual methods
.method protected abstract getCmd()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mTimeout:I

    return v0
.end method

.method protected abstract parseFrom([B)Lcom/google/protobuf/GeneratedMessage;
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TRsp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public sendAsync()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->sendAsync(I)V

    return-void
.end method

.method public sendAsync(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->sendAsync(ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    return-void
.end method

.method public sendAsync(ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V
    .locals 2
    .param p2    # Lcom/mi/milinkforgame/sdk/session/ResponseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getRequestPacketData(Z)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendRequestAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    return-void
.end method

.method public sendSync()Lcom/google/protobuf/GeneratedMessage;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRsp;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->checkBeforeSend()V

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getRequestPacketData(Z)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->sendRequestSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rspData is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rspData.getData() is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->parseFrom([B)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parse byte[] to response fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setTimeout(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/mi/mimsgsdk/net/BaseMiLinkRequest;->mTimeout:I

    goto :goto_0
.end method
