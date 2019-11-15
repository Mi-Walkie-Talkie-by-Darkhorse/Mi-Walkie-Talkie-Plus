.class public abstract Lcom/mi/mimsgsdk/net/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# instance fields
.field protected mRequest:Lcom/google/protobuf/GeneratedMessage;

.field private mResponse:Lcom/google/protobuf/GeneratedMessage;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/mi/mimsgsdk/net/BaseRequest;->mTimeout:I

    return-void
.end method

.method private checkBeforeSend()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/net/BaseRequest;->mRequest:Lcom/google/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mRequest is null, do you forget to assign it in constructor?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getCmd()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getPacketData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 2

    invoke-direct {p0}, Lcom/mi/mimsgsdk/net/BaseRequest;->checkBeforeSend()V

    new-instance v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/net/BaseRequest;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/net/BaseRequest;->mRequest:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/net/BaseRequest;->mTimeout:I

    return v0
.end method

.method protected setTimeout(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/mi/mimsgsdk/net/BaseRequest;->mTimeout:I

    goto :goto_0
.end method
