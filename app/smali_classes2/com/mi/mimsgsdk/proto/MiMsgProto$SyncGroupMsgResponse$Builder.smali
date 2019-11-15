.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private currGuid_:Ljava/lang/Object;

.field private currMuid_:J

.field private maxMsgSeq_:J

.field private msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private msgs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            ">;"
        }
    .end annotation
.end field

.field private retCode_:I

.field private targetGgid_:Ljava/lang/Object;

.field private targetMgid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17200()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMsgsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$17400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMsgs(Ljava/lang/Iterable;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            ">;)",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMsgs(ILcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMsgs(ILcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMsgs(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMsgs(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMsgsBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    return-object v0
.end method

.method public addMsgsBuilder(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$17602(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->retCode_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$17702(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$17802(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currMuid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$17902(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18002(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetMgid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18102(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;J)J

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maxMsgSeq_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18202(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;J)J

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    :cond_6
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18302(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/util/List;)Ljava/util/List;

    :goto_1
    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18402(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onBuilt()V

    return-object v2

    :cond_7
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18302(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->retCode_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currMuid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetMgid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maxMsgSeq_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurrGuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getCurrGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurrMuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxMsgSeq()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maxMsgSeq_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgs()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearRetCode()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->retCode_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTargetGgid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getTargetGgid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTargetMgid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetMgid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->appid_:I

    return v0
.end method

.method public getCurrGuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCurrMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currMuid_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMaxMsgSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maxMsgSeq_:J

    return-wide v0
.end method

.method public getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    goto :goto_0
.end method

.method public getMsgsBuilder(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    return-object v0
.end method

.method public getMsgsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMsgsCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMsgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMsgsOrBuilder(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;

    goto :goto_0
.end method

.method public getMsgsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->retCode_:I

    return v0
.end method

.method public getTargetGgid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTargetMgid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetMgid_:J

    return-wide v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

.method public hasCurrMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

.method public hasMaxMsgSeq()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

.method public hasRetCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

.method public hasTargetGgid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

.method public hasTargetMgid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->hasAppid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->hasRetCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->hasCurrGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->hasTargetGgid()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasAppid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getAppid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasRetCode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getRetCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->setRetCode(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasCurrGuid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$17800(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasCurrMuid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getCurrMuid()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->setCurrMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasTargetGgid()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18000(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasTargetMgid()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getTargetMgid()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->setTargetMgid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasMaxMsgSeq()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getMaxMsgSeq()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->setMaxMsgSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    :cond_7
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_a

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_a
    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18500()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->getMsgsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrGuidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurrMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->currMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxMsgSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->maxMsgSeq_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgs(ILcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMsgs(ILcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->ensureMsgsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->msgsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRetCode(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->retCode_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setTargetGgid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setTargetGgidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetGgid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setTargetMgid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->targetMgid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->onChanged()V

    return-object p0
.end method
