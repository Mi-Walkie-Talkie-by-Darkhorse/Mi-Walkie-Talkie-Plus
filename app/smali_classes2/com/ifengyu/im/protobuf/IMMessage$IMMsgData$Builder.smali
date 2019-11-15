.class public final Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMMessage.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;",
        "Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataOrBuilder;"
    }
.end annotation


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private createTime_:I

.field private fromUserId_:I

.field private msgData_:Lcom/google/protobuf/ByteString;

.field private msgId_:I

.field private msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

.field private toSessionId_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgData_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$100()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->create()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->build()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMMessage$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->fromUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$302(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->toSessionId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$402(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$502(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->createTime_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$602(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$702(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$802(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$902(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$1002(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;I)I

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->clear()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->clear()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->fromUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->toSessionId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->createTime_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAttachData()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearCreateTime()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->createTime_:I

    return-object p0
.end method

.method public clearFromUserId()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->fromUserId_:I

    return-object p0
.end method

.method public clearMsgData()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearMsgId()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgId_:I

    return-object p0
.end method

.method public clearMsgType()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p0
.end method

.method public clearToSessionId()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->toSessionId_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->clone()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->clone()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->clone()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->create()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->clone()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreateTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->createTime_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    return-object v0
.end method

.method public getFromUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->fromUserId_:I

    return v0
.end method

.method public getMsgData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgId_:I

    return v0
.end method

.method public getMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object v0
.end method

.method public getToSessionId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->toSessionId_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreateTime()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

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

.method public hasFromUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsgId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

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

.method public hasMsgType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

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

.method public hasToSessionId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->hasFromUserId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->hasToSessionId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->hasMsgId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->hasCreateTime()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->hasMsgType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->hasMsgData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasFromUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getFromUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setFromUserId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasToSessionId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getToSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setToSessionId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setMsgId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasCreateTime()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getCreateTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setCreateTime(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasMsgType()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasMsgData()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setMsgData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->hasAttachData()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;->access$1100(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setCreateTime(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->createTime_:I

    return-object p0
.end method

.method public setFromUserId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->fromUserId_:I

    return-object p0
.end method

.method public setMsgData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setMsgId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgId_:I

    return-object p0
.end method

.method public setMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->msgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p0
.end method

.method public setToSessionId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgData$Builder;->toSessionId_:I

    return-object p0
.end method
