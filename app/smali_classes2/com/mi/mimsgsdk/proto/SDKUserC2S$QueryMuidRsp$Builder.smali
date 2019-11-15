.class public final Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SDKUserC2S.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRspOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private errorMsg_:Ljava/lang/Object;

.field private mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mediaIds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;"
        }
    .end annotation
.end field

.field private ret_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2400()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->create()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMediaIdsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMediaIds(Ljava/lang/Iterable;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;)",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMediaIds(ILcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMediaIds(ILcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMediaIds(Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMediaIds(Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMediaIdsBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;

    return-object v0
.end method

.method public addMediaIdsBuilder(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$2802(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ret_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$2902(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;I)I

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3002(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3102(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3202(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onBuilt()V

    return-object v2

    :cond_3
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3002(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clear()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ret_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public clearErrorMsg()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMediaIds()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearRet()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ret_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->create()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->clone()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->appid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMediaIds(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    goto :goto_0
.end method

.method public getMediaIdsBuilder(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;

    return-object v0
.end method

.method public getMediaIdsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaIdsCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMediaIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaIdsOrBuilder(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;

    goto :goto_0
.end method

.method public getMediaIdsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserIdOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRet()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ret_:I

    return v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

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

.method public hasRet()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    const-class v2, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->hasAppid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->hasRet()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIds(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->hasAppid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getAppid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->hasRet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getRet()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->setRet(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;

    :cond_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->hasErrorMsg()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3100(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->getMediaIdsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->access$3000(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeMediaIds(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public setErrorMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->errorMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public setMediaIds(ILcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMediaIds(ILcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ensureMediaIdsIsMutable()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIds_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->mediaIdsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRet(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->ret_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp$Builder;->onChanged()V

    return-object p0
.end method
