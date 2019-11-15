.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRspOrBuilder;"
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

.field private newCreator_:I

.field private oldCreator_:I

.field private reason_:I

.field private resultCode_:I

.field private userHandle_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$48200()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMemberIdListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllMemberIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addMemberIdList(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->oldCreator_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48402(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->resultCode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48502(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48602(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->newCreator_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48702(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48802(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48902(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->isfromuser_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$49002(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->reason_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$49102(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->userHandle_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$49202(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8

    or-int/lit16 v0, v0, 0x100

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$49302(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$49402(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;I)I

    return-object v2

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->oldCreator_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->resultCode_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->newCreator_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->isfromuser_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->reason_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->userHandle_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAttachData()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearGroupId()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupId_:I

    return-object p0
.end method

.method public clearGroupName()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearIsfromuser()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->isfromuser_:I

    return-object p0
.end method

.method public clearMemberIdList()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearNewCreator()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->newCreator_:I

    return-object p0
.end method

.method public clearOldCreator()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->oldCreator_:I

    return-object p0
.end method

.method public clearReason()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->reason_:I

    return-object p0
.end method

.method public clearResultCode()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->resultCode_:I

    return-object p0
.end method

.method public clearUserHandle()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->userHandle_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupId_:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getIsfromuser()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->isfromuser_:I

    return v0
.end method

.method public getMemberIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMemberIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewCreator()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->newCreator_:I

    return v0
.end method

.method public getOldCreator()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->oldCreator_:I

    return v0
.end method

.method public getReason()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->reason_:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->resultCode_:I

    return v0
.end method

.method public getUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->userHandle_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

.method public hasNewCreator()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

.method public hasOldCreator()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReason()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

.method public hasResultCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->hasOldCreator()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->hasResultCode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->hasGroupId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->hasNewCreator()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasOldCreator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getOldCreator()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setOldCreator(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getResultCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasGroupId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getGroupId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasNewCreator()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getNewCreator()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setNewCreator(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_4
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48800(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48800(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasGroupName()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48900(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasIsfromuser()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getIsfromuser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setIsfromuser(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setReason(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasUserHandle()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->hasAttachData()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;

    :cond_a
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$49500(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->access$48800(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupId_:I

    return-object p0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setGroupNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setIsfromuser(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->isfromuser_:I

    return-object p0
.end method

.method public setMemberIdList(II)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->ensureMemberIdListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->memberIdList_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNewCreator(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->newCreator_:I

    return-object p0
.end method

.method public setOldCreator(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->oldCreator_:I

    return-object p0
.end method

.method public setReason(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->reason_:I

    return-object p0
.end method

.method public setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->resultCode_:I

    return-object p0
.end method

.method public setUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp$Builder;->userHandle_:I

    return-object p0
.end method
