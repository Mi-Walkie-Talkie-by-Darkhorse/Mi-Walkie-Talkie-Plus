.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latestMsgData_:Lcom/google/protobuf/ByteString;

.field private latestMsgFromUserId_:I

.field private latestMsgId_:I

.field private latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

.field private sessionId_:I

.field private sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

.field private sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

.field private updatedTime_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;->SESSION_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$4700()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$4902(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5002(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5102(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->updatedTime_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5202(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5302(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5402(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5502(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgFromUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5602(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5702(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;I)I

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;->SESSION_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->updatedTime_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgFromUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLatestMsgData()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getLatestMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearLatestMsgFromUserId()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgFromUserId_:I

    return-object p0
.end method

.method public clearLatestMsgId()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgId_:I

    return-object p0
.end method

.method public clearLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p0
.end method

.method public clearSessionId()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionId_:I

    return-object p0
.end method

.method public clearSessionStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;->SESSION_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    return-object p0
.end method

.method public clearSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object p0
.end method

.method public clearUpdatedTime()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->updatedTime_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMsgData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLatestMsgFromUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgFromUserId_:I

    return v0
.end method

.method public getLatestMsgId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgId_:I

    return v0
.end method

.method public getLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionId_:I

    return v0
.end method

.method public getSessionStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    return-object v0
.end method

.method public getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object v0
.end method

.method public getUpdatedTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->updatedTime_:I

    return v0
.end method

.method public hasLatestMsgData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

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

.method public hasLatestMsgFromUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

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

.method public hasLatestMsgType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionStatus()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

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

.method public hasSessionType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

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

.method public hasUpdatedTime()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasSessionId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasSessionType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasSessionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasUpdatedTime()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasLatestMsgId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasLatestMsgData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasLatestMsgType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->hasLatestMsgFromUserId()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setSessionId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasSessionType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasSessionStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getSessionStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setSessionStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasUpdatedTime()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getUpdatedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setUpdatedTime(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasLatestMsgId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getLatestMsgId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setLatestMsgId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasLatestMsgData()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getLatestMsgData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setLatestMsgData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasLatestMsgType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setLatestMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->hasLatestMsgFromUserId()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->getLatestMsgFromUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setLatestMsgFromUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;

    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->access$5800(Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setLatestMsgData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setLatestMsgFromUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgFromUserId_:I

    return-object p0
.end method

.method public setLatestMsgId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgId_:I

    return-object p0
.end method

.method public setLatestMsgType(Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p0
.end method

.method public setSessionId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionId_:I

    return-object p0
.end method

.method public setSessionStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionStatus_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionStatusType;

    return-object p0
.end method

.method public setSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object p0
.end method

.method public setUpdatedTime(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo$Builder;->updatedTime_:I

    return-object p0
.end method
