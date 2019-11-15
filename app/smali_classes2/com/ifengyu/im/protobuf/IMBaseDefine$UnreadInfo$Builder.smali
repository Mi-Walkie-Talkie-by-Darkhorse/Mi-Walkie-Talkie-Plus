.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latestMsgData_:Lcom/google/protobuf/ByteString;

.field private latestMsgFromUserId_:I

.field private latestMsgId_:I

.field private latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

.field private sessionId_:I

.field private sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

.field private unreadCnt_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$8500()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$8702(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$8802(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->unreadCnt_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$8902(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$9002(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$9102(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$9202(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgFromUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$9302(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$9402(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->unreadCnt_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgFromUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLatestMsgData()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearLatestMsgFromUserId()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgFromUserId_:I

    return-object p0
.end method

.method public clearLatestMsgId()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgId_:I

    return-object p0
.end method

.method public clearLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p0
.end method

.method public clearSessionId()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionId_:I

    return-object p0
.end method

.method public clearSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object p0
.end method

.method public clearUnreadCnt()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->unreadCnt_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMsgData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLatestMsgFromUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgFromUserId_:I

    return v0
.end method

.method public getLatestMsgId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgId_:I

    return v0
.end method

.method public getLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionId_:I

    return v0
.end method

.method public getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object v0
.end method

.method public getUnreadCnt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->unreadCnt_:I

    return v0
.end method

.method public hasLatestMsgData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

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

.method public hasLatestMsgFromUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

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

.method public hasLatestMsgId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

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

.method public hasLatestMsgType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

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

.method public hasUnreadCnt()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasSessionId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasSessionType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasUnreadCnt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasLatestMsgId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasLatestMsgData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasLatestMsgType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->hasLatestMsgFromUserId()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setSessionId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasSessionType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasUnreadCnt()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getUnreadCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setUnreadCnt(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setLatestMsgId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgData()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setLatestMsgData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setLatestMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgFromUserId()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getLatestMsgFromUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setLatestMsgFromUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->access$9500(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setLatestMsgData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setLatestMsgFromUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgFromUserId_:I

    return-object p0
.end method

.method public setLatestMsgId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgId_:I

    return-object p0
.end method

.method public setLatestMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p0
.end method

.method public setSessionId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionId_:I

    return-object p0
.end method

.method public setSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object p0
.end method

.method public setUnreadCnt(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->unreadCnt_:I

    return-object p0
.end method
