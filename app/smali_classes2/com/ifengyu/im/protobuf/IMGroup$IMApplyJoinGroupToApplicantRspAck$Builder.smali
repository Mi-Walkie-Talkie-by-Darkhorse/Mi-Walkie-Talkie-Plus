.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAckOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAckOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private resultCode_:I

.field private userHandle_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$17800()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->resultCode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->access$18002(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->userHandle_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->access$18102(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->access$18202(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->resultCode_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->userHandle_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearResultCode()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->resultCode_:I

    return-object p0
.end method

.method public clearUserHandle()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->userHandle_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->resultCode_:I

    return v0
.end method

.method public getUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->userHandle_:I

    return v0
.end method

.method public hasResultCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserHandle()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

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
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->hasResultCode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->getResultCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->hasUserHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->getUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->setUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;->access$18300(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->resultCode_:I

    return-object p0
.end method

.method public setUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspAck$Builder;->userHandle_:I

    return-object p0
.end method
