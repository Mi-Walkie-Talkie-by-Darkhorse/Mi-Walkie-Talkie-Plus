.class public final Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Mi3Protos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7
    sget-object p1, Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    .line 8
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/Mi3Protos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->create()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->access$1400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/Mi3Protos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->access$1602(Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->access$1702(Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;)Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->access$1802(Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->access$1902(Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->version_:I

    .line 7
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 8
    sget-object v1, Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    and-int/lit8 v0, v0, -0x3

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 10
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v0, v0, -0x5

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearConnectCode()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPublicKey()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->create()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnectCode()Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->version_:I

    return v0
.end method

.method public hasConnectCode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPublicKey()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setConnectCode(Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;)Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->connectCode_:Lcom/ifengyu/intercom/protos/Mi3Protos$CONNECT_CODE;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$KeyExchangeResponse$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
