.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private currGuid_:Ljava/lang/Object;

.field private currMuid_:J

.field private limit_:I

.field private startMsgSeq_:J

.field private targetGgid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$18900()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$18600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19100()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    :goto_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19302(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19402(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currMuid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19502(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19602(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->startMsgSeq_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19702(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;J)J

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->limit_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19802(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;I)I

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19902(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onBuilt()V

    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currMuid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->startMsgSeq_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->limit_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurrGuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getCurrGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurrMuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLimit()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->limit_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStartMsgSeq()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->startMsgSeq_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTargetGgid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getTargetGgid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->appid_:I

    return v0
.end method

.method public getCurrGuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCurrMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currMuid_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$18600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->limit_:I

    return v0
.end method

.method public getStartMsgSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->startMsgSeq_:J

    return-wide v0
.end method

.method public getTargetGgid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTargetGgidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrGuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

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

.method public hasCurrMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

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

.method public hasLimit()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

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

.method public hasStartMsgSeq()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

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

.method public hasTargetGgid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$18700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->hasAppid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->hasCurrGuid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->hasTargetGgid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->hasStartMsgSeq()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->hasCurrGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19400(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->hasCurrMuid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getCurrMuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setCurrMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->hasTargetGgid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->access$19600(Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->hasStartMsgSeq()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getStartMsgSeq()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setStartMsgSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setLimit(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrGuidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->currMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setLimit(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->limit_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setStartMsgSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->startMsgSeq_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setTargetGgid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setTargetGgidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->onChanged()V

    return-object p0
.end method
