.class public final Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBuddy.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;",
        "Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRspOrBuilder;"
    }
.end annotation


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private latestUpdateTime_:I

.field private userId_:I

.field private userList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$9100()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->create()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllUserList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;",
            ">;)",
            "Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addUserList(ILcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addUserList(ILcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addUserList(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUserList(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBuddy$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9302(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->latestUpdateTime_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9402(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;I)I

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9502(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9602(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9702(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;I)I

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->latestUpdateTime_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAttachData()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearLatestUpdateTime()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->latestUpdateTime_:I

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userId_:I

    return-object p0
.end method

.method public clearUserList()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->create()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    return-object v0
.end method

.method public getLatestUpdateTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->latestUpdateTime_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userId_:I

    return v0
.end method

.method public getUserList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    return-object v0
.end method

.method public getUserListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

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

.method public hasLatestUpdateTime()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->hasLatestUpdateTime()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->hasLatestUpdateTime()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getLatestUpdateTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->setLatestUpdateTime(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    :cond_2
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9500(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9500(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->hasAttachData()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9800(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->access$9500(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeUserList(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setLatestUpdateTime(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->latestUpdateTime_:I

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userId_:I

    return-object p0
.end method

.method public setUserList(ILcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUserList(ILcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->ensureUserListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp$Builder;->userList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
