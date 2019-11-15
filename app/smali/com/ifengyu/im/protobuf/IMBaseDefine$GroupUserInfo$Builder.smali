.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private createdTime_:I

.field private departmentId_:I

.field private email_:Ljava/lang/Object;

.field private groupId_:I

.field private inconference_:I

.field private nickNameIngroup_:Ljava/lang/Object;

.field private phoneVerified_:I

.field private status_:I

.field private userDomain_:Ljava/lang/Object;

.field private userGender_:I

.field private userId_:I

.field private userNickName_:Ljava/lang/Object;

.field private userRealName_:Ljava/lang/Object;

.field private userTel_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$2700()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->groupId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$2902(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3002(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3102(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->createdTime_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3202(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userGender_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3302(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3402(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3502(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->departmentId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3602(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3702(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3802(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3902(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4002(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->status_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4102(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->phoneVerified_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4202(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    and-int/lit16 v1, v3, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->inconference_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4302(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4402(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;I)I

    return-object v2

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->groupId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->createdTime_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userGender_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->departmentId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->status_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->phoneVerified_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->inconference_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAvatarUrl()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCreatedTime()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->createdTime_:I

    return-object p0
.end method

.method public clearDepartmentId()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->departmentId_:I

    return-object p0
.end method

.method public clearEmail()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearGroupId()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->groupId_:I

    return-object p0
.end method

.method public clearInconference()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->inconference_:I

    return-object p0
.end method

.method public clearNickNameIngroup()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getNickNameIngroup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearPhoneVerified()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->phoneVerified_:I

    return-object p0
.end method

.method public clearStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->status_:I

    return-object p0
.end method

.method public clearUserDomain()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserGender()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userGender_:I

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userId_:I

    return-object p0
.end method

.method public clearUserNickName()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserRealName()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserRealName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserTel()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserTel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAvatarUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCreatedTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->createdTime_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDepartmentId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->departmentId_:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->groupId_:I

    return v0
.end method

.method public getInconference()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->inconference_:I

    return v0
.end method

.method public getNickNameIngroup()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNickNameIngroupBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPhoneVerified()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->phoneVerified_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->status_:I

    return v0
.end method

.method public getUserDomain()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserDomainBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUserGender()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userGender_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userId_:I

    return v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserNickNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUserRealName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserRealNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUserTel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserTelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAvatarUrl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasCreatedTime()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasDepartmentId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasEmail()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInconference()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNickNameIngroup()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasPhoneVerified()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserDomain()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserGender()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasUserNickName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasUserRealName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

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

.method public hasUserTel()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getGroupId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasNickNameIngroup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3100(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasCreatedTime()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getCreatedTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setCreatedTime(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasUserGender()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserGender()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setUserGender(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasUserNickName()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3400(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasAvatarUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3500(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasDepartmentId()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getDepartmentId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setDepartmentId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3700(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasUserRealName()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3800(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasUserTel()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$3900(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasUserDomain()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4000(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setStatus(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasPhoneVerified()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getPhoneVerified()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setPhoneVerified(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_e
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->hasInconference()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getInconference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setInconference(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;

    :cond_f
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->access$4500(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public setAvatarUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public setCreatedTime(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->createdTime_:I

    return-object p0
.end method

.method public setDepartmentId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->departmentId_:I

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method public setGroupId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->groupId_:I

    return-object p0
.end method

.method public setInconference(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->inconference_:I

    return-object p0
.end method

.method public setNickNameIngroup(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    return-object p0
.end method

.method public setNickNameIngroupBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->nickNameIngroup_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPhoneVerified(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->phoneVerified_:I

    return-object p0
.end method

.method public setStatus(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->status_:I

    return-object p0
.end method

.method public setUserDomain(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserDomainBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userDomain_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserGender(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userGender_:I

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userId_:I

    return-object p0
.end method

.method public setUserNickName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserNickNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userNickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserRealName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserRealNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userRealName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserTel(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserTelBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo$Builder;->userTel_:Ljava/lang/Object;

    return-object p0
.end method
