.class public final Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SDKSignal.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReqOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private conferenceId_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/SDKSignal$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2900()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->create()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/SDKSignal$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->access$3302(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->conferenceId_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->access$3402(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;J)J

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->access$3502(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->onBuilt()V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->conferenceId_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConferenceId()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->conferenceId_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->create()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->appid_:I

    return v0
.end method

.method public getConferenceId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->conferenceId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConferenceId()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    const-class v2, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->hasAppid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->hasConferenceId()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->hasConferenceId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->getConferenceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->setConferenceId(J)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setConferenceId(J)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->conferenceId_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->onChanged()V

    return-object p0
.end method
