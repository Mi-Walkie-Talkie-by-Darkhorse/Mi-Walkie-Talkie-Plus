.class public final Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PushPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushDataOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private cmd_:Ljava/lang/Object;

.field private frommiUid_:Ljava/lang/Object;

.field private pushdata_:Lcom/google/protobuf/ByteString;

.field private tomiUid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$702(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$802(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$902(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$1002(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$1102(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$1202(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onBuilt()V

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->appid_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppid()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCmd()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getCmd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFrommiUid()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getFrommiUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPushdata()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getPushdata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTomiUid()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getTomiUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->appid_:I

    return v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCmdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFrommiUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFrommiUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPushdata()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTomiUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTomiUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAppid()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCmd()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrommiUid()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPushdata()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTomiUid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->hasTomiUid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->hasAppid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->hasTomiUid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$700(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->setAppid(I)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->hasFrommiUid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$900(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->access$1000(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->hasPushdata()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getPushdata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->setPushdata(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAppid(I)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setCmd(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setCmdBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setFrommiUid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setFrommiUidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->frommiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setPushdata(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->pushdata_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setTomiUid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method

.method public setTomiUidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->tomiUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$SimplePushData$Builder;->onChanged()V

    return-object p0
.end method
