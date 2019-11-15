.class public final Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private flag_:I

.field private pkgId_:J

.field private retryCnt_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6100()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$5800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->access$6300()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->flag_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->access$6502(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->retryCnt_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->access$6602(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->pkgId_:J

    invoke-static {v2, v4, v5}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->access$6702(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;J)J

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->access$6802(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->flag_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->retryCnt_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->pkgId_:J

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFlag()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->flag_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPkgId()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->pkgId_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRetryCnt()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->retryCnt_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$5800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->flag_:I

    return v0
.end method

.method public getPkgId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->pkgId_:J

    return-wide v0
.end method

.method public getRetryCnt()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->retryCnt_:I

    return v0
.end method

.method public hasFlag()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPkgId()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

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

.method public hasRetryCnt()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$5900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;
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

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->setFlag(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->hasRetryCnt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getRetryCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->setRetryCnt(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->hasPkgId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getPkgId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->setPkgId(J)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setFlag(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->flag_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setPkgId(J)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->pkgId_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setRetryCnt(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->retryCnt_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->onChanged()V

    return-object p0
.end method
