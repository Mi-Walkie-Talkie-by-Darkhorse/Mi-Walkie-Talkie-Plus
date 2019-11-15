.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStatOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field private status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

.field private userId_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$6700()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->access$6902(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->access$7002(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->access$7102(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->access$7202(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object p0
.end method

.method public clearStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->userId_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->userId_:I

    return v0
.end method

.method public hasClientType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->hasClientType()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->setStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->hasClientType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->setClientType(Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->access$7300(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setClientType(Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object p0
.end method

.method public setStatus(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->userId_:I

    return-object p0
.end method
