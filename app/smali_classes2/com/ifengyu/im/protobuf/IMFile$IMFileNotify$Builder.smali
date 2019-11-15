.class public final Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMFile.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMFile$IMFileNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;",
        "Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMFile$IMFileNotifyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fileName_:Ljava/lang/Object;

.field private fileSize_:I

.field private fromUserId_:I

.field private ipAddrList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;",
            ">;"
        }
    .end annotation
.end field

.field private offlineReady_:I

.field private taskId_:Ljava/lang/Object;

.field private toUserId_:I

.field private transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->FILE_TYPE_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$6600()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->create()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;-><init>()V

    return-object v0
.end method

.method private ensureIpAddrListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllIpAddrList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;",
            ">;)",
            "Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addIpAddrList(ILcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr$Builder;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addIpAddrList(ILcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addIpAddrList(Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr$Builder;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addIpAddrList(Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->build()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMFile$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fromUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$6802(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->toUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$6902(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7002(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileSize_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7102(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7202(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7302(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7402(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->offlineReady_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7502(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7602(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;I)I

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->clear()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->clear()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fromUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->toUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileSize_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->FILE_TYPE_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->offlineReady_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFileName()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearFileSize()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileSize_:I

    return-object p0
.end method

.method public clearFromUserId()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fromUserId_:I

    return-object p0
.end method

.method public clearIpAddrList()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOfflineReady()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->offlineReady_:I

    return-object p0
.end method

.method public clearTaskId()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearToUserId()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->toUserId_:I

    return-object p0
.end method

.method public clearTransMode()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->FILE_TYPE_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->create()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->clone()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileSize_:I

    return v0
.end method

.method public getFromUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fromUserId_:I

    return v0
.end method

.method public getIpAddrList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;

    return-object v0
.end method

.method public getIpAddrListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIpAddrListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineReady()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->offlineReady_:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTaskIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getToUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->toUserId_:I

    return v0
.end method

.method public getTransMode()Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    return-object v0
.end method

.method public hasFileName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

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

.method public hasFileSize()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

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

.method public hasFromUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOfflineReady()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTaskId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

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

.method public hasToUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

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

.method public hasTransMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasFromUserId()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasToUserId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasFileName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasFileSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasTaskId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasTransMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->hasOfflineReady()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->getIpAddrListCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->getIpAddrList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasFromUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getFromUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->setFromUserId(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasToUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getToUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->setToUserId(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasFileName()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7000(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasFileSize()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getFileSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->setFileSize(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasTaskId()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7200(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    :cond_5
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7300(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7300(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasTransMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getTransMode()Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->setTransMode(Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->hasOfflineReady()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->getOfflineReady()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->setOfflineReady(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;

    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7700(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;->access$7300(Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeIpAddrList(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setFileNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setFileSize(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fileSize_:I

    return-object p0
.end method

.method public setFromUserId(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->fromUserId_:I

    return-object p0
.end method

.method public setIpAddrList(ILcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr$Builder;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIpAddrList(ILcom/ifengyu/im/protobuf/IMBaseDefine$IpAddr;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ensureIpAddrListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->ipAddrList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setOfflineReady(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->offlineReady_:I

    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTaskIdBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->taskId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setToUserId(I)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->toUserId_:I

    return-object p0
.end method

.method public setTransMode(Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;)Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFileNotify$Builder;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    return-object p0
.end method
