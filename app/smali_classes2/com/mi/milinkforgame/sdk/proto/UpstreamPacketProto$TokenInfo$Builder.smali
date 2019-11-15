.class public final Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private key_:Lcom/google/protobuf/ByteString;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2700()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExtKeyIsMutable()V
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtKey(Ljava/lang/Iterable;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;",
            ">;)",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtKey(ILcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtKey(ILcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtKey(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtKey(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtKeyBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;

    return-object v0
.end method

.method public addExtKeyBuilder(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->type_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3102(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3202(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3302(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;Ljava/util/List;)Ljava/util/List;

    :goto_1
    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3402(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onBuilt()V

    return-object v2

    :cond_2
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3302(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->type_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearExtKey()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearKey()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->type_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtKey(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    goto :goto_0
.end method

.method public getExtKeyBuilder(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;

    return-object v0
.end method

.method public getExtKeyBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtKeyCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getExtKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtKeyOrBuilder(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;

    goto :goto_0
.end method

.method public getExtKeyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->type_:I

    return v0
.end method

.method public hasKey()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$2500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;
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

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->setType(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->setKey(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    :cond_2
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3300(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3300(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3300(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3300(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3300(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3500()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->getExtKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;->access$3300(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeExtKey(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setExtKey(ILcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setExtKey(ILcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ExtKeyInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->ensureExtKeyIsMutable()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKey_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->extKeyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setKey(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->key_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->type_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->onChanged()V

    return-object p0
.end method
