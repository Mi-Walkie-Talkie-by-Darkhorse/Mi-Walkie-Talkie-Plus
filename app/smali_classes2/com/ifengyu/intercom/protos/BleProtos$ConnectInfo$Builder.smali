.class public final Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:I

.field private deviceType_:I

.field private iv_:Lcom/google/protobuf/ByteString;

.field private key_:Lcom/google/protobuf/ByteString;

.field private mac_:Lcom/google/protobuf/ByteString;

.field private token_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 9
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 10
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 11
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    .line 12
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1402(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1502(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1602(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1702(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1802(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;I)I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceType_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$1902(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;I)I

    .line 11
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->access$2002(Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 10
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x5

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 12
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v0, v1, -0x9

    .line 13
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceId_:I

    and-int/lit8 v0, v0, -0x11

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 16
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceType_:I

    and-int/lit8 v0, v0, -0x21

    .line 17
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceType()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceType_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIv()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKey()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMac()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToken()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceId_:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceType_:I

    return v0
.end method

.method public getIv()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMac()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIv()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

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

.method public hasKey()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

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

.method public hasMac()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasToken()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceType(I)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->deviceType_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setIv(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->iv_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setKey(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMac(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setToken(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
