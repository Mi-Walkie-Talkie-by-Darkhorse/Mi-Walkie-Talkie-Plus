.class public final Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMOther.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;",
        "Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserloadOrBuilder;"
    }
.end annotation


# instance fields
.field private asUserLoad_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$2400()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->create()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAsUserLoadIsMutable()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllAsUserLoad(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;",
            ">;)",
            "Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAsUserLoad(ILcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio$Builder;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addAsUserLoad(ILcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addAsUserLoad(Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio$Builder;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAsUserLoad(Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->build()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;
    .locals 3

    new-instance v0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMOther$1;)V

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->access$2602(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->clear()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->clear()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAsUserLoad()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->create()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAsUserLoad(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;

    return-object v0
.end method

.method public getAsUserLoadCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAsUserLoadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->getAsUserLoadCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->getAsUserLoad(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->access$2600(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->access$2600(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->bitField0_:I

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->access$2700(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;->access$2600(Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeAsUserLoad(I)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setAsUserLoad(ILcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio$Builder;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAsUserLoad(ILcom/ifengyu/im/protobuf/IMBaseDefine$AccessSerUserLoadRatio;)Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->ensureAsUserLoadIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMCS2LSUserload$Builder;->asUserLoad_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
