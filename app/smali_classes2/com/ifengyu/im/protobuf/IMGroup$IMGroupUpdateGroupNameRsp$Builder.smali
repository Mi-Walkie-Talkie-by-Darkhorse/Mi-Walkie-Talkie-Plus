.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRspOrBuilder;"
    }
.end annotation


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private groupId_:I

.field private groupName_:Ljava/lang/Object;

.field private isfromuser_:I

.field private memberIdList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private newGroupName_:Ljava/lang/Object;

.field private resultCode_:I

.field private userHandle_:I

.field private userId_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$50800()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMemberIdListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllMemberIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addMemberIdList(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51002(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->resultCode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51102(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51202(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51302(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51402(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51502(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->isfromuser_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51602(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userHandle_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51702(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51802(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51902(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;I)I

    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->resultCode_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->isfromuser_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userHandle_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAttachData()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearGroupId()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupId_:I

    return-object p0
.end method

.method public clearGroupName()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearIsfromuser()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->isfromuser_:I

    return-object p0
.end method

.method public clearMemberIdList()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearNewGroupName()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getNewGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearResultCode()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->resultCode_:I

    return-object p0
.end method

.method public clearUserHandle()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userHandle_:I

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userId_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupId_:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGroupNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getIsfromuser()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->isfromuser_:I

    return v0
.end method

.method public getMemberIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMemberIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMemberIdListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewGroupName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNewGroupNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->resultCode_:I

    return v0
.end method

.method public getUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userHandle_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userId_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

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

.method public hasGroupName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

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

.method public hasIsfromuser()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

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

.method public hasNewGroupName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

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

.method public hasResultCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

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

.method public hasUserHandle()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->hasResultCode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->hasGroupId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->hasNewGroupName()Z

    move-result v1

    if-eqz v1, :cond_0

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getResultCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasGroupId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getGroupId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasNewGroupName()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51300(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51400(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51400(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasGroupName()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51500(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasIsfromuser()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getIsfromuser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setIsfromuser(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasUserHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->hasAttachData()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;

    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$52000(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;->access$51400(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupId_:I

    return-object p0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setGroupNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setIsfromuser(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->isfromuser_:I

    return-object p0
.end method

.method public setMemberIdList(II)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNewGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setNewGroupNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->newGroupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->resultCode_:I

    return-object p0
.end method

.method public setUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userHandle_:I

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameRsp$Builder;->userId_:I

    return-object p0
.end method
