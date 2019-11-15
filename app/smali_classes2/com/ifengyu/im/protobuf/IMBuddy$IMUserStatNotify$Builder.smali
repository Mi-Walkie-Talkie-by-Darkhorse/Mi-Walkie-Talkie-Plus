.class public final Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBuddy.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;",
        "Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotifyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$5800()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->create()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBuddy$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->access$6002(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->access$6102(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;I)I

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearUserStat()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->create()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    return-object v0
.end method

.method public getUserStat()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    return-object v0
.end method

.method public hasUserStat()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->hasUserStat()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->getUserStat()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->hasUserStat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->getUserStat()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->mergeUserStat(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;->access$6200(Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeUserStat(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;->newBuilder(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    :goto_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    goto :goto_0
.end method

.method public setUserStat(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat$Builder;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUserStat(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->userStat_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStat;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMUserStatNotify$Builder;->bitField0_:I

    return-object p0
.end method
