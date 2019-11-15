.class public final Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BCKS3.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errorCode_:I

.field private errorMsg_:Ljava/lang/Object;

.field private rid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4600()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->create()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->build()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->rid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->access$5002(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorCode_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->access$5102(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->access$5202(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->access$5302(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->rid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorCode_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearErrorCode()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorCode_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearErrorMsg()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRid()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->rid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->create()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorCode_:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getRid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->rid_:J

    return-wide v0
.end method

.method public hasErrorCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

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

.method public hasErrorMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

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

.method public hasRid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->hasRid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->hasErrorCode()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->hasRid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getRid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->setErrorCode(I)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->hasErrorMsg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->access$5200(Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setErrorCode(I)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorCode_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setRid(J)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->rid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseResponse$Builder;->onChanged()V

    return-object p0
.end method
