.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private groupId_:I

.field private groupName_:Ljava/lang/Object;

.field private inviteUserId_:I

.field private inviteeUidList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reqUserHandle_:I

.field private reqUserId_:I

.field private reqUserName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$18500()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInviteeUidListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllInviteeUidList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->ensureInviteeUidListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addInviteeUidList(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->ensureInviteeUidListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$18702(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$18802(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteUserId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$18902(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19002(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19102(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19202(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserHandle_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19302(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19402(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;I)I

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->clear()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteUserId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserHandle_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearGroupId()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupId_:I

    return-object p0
.end method

.method public clearGroupName()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearInviteUserId()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteUserId_:I

    return-object p0
.end method

.method public clearInviteeUidList()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearReqUserHandle()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserHandle_:I

    return-object p0
.end method

.method public clearReqUserId()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserId_:I

    return-object p0
.end method

.method public clearReqUserName()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getReqUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->create()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupId_:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInviteUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteUserId_:I

    return v0
.end method

.method public getInviteeUidList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInviteeUidListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInviteeUidListList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReqUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserHandle_:I

    return v0
.end method

.method public getReqUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserId_:I

    return v0
.end method

.method public getReqUserName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getReqUserNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasGroupId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

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

.method public hasGroupName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

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

.method public hasInviteUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

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

.method public hasReqUserHandle()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

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

.method public hasReqUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReqUserName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->hasReqUserId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->hasReqUserName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->hasGroupId()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->hasReqUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getReqUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setReqUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->hasReqUserName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$18800(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->hasInviteUserId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getInviteUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setInviteUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->hasGroupId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getGroupId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->hasGroupName()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19100(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    :cond_5
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19200(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19200(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->hasReqUserHandle()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->getReqUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setReqUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19500(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->ensureInviteeUidListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->access$19200(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupId_:I

    return-object p0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setGroupNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->groupName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setInviteUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteUserId_:I

    return-object p0
.end method

.method public setInviteeUidList(II)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->ensureInviteeUidListIsMutable()V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->inviteeUidList_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReqUserHandle(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserHandle_:I

    return-object p0
.end method

.method public setReqUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserId_:I

    return-object p0
.end method

.method public setReqUserName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setReqUserNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->reqUserName_:Ljava/lang/Object;

    return-object p0
.end method
