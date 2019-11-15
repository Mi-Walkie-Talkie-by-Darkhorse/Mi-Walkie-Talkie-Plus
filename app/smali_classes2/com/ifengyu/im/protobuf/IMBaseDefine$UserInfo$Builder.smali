.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private departmentId_:I

.field private distance_:I

.field private email_:Ljava/lang/Object;

.field private latitude_:Ljava/lang/Object;

.field private longitude_:Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$800()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1002(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userGender_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1102(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1202(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1302(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->departmentId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1402(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1502(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1602(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1702(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1802(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->status_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1902(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->phoneVerified_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2002(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->distance_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2102(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2202(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2302(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2402(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;I)I

    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userGender_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->departmentId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->status_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->phoneVerified_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->distance_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAvatarUrl()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearDepartmentId()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->departmentId_:I

    return-object p0
.end method

.method public clearDistance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->distance_:I

    return-object p0
.end method

.method public clearEmail()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearLatitude()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearLongitude()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearPhoneVerified()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->phoneVerified_:I

    return-object p0
.end method

.method public clearStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->status_:I

    return-object p0
.end method

.method public clearUserDomain()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserGender()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userGender_:I

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userId_:I

    return-object p0
.end method

.method public clearUserNickName()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserRealName()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserRealName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserTel()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserTel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->create()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->clone()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDepartmentId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->departmentId_:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->distance_:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatitudeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLongitudeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPhoneVerified()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->phoneVerified_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->status_:I

    return v0
.end method

.method public getUserDomain()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUserGender()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userGender_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userId_:I

    return v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUserRealName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUserTel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAvatarUrl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasDistance()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasEmail()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasLatitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasPhoneVerified()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasUserDomain()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasUserGender()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserNickName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasUserRealName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

.method public hasUserTel()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasUserGender()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserGender()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setUserGender(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasUserNickName()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1200(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasAvatarUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1300(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasDepartmentId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDepartmentId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setDepartmentId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1500(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasUserRealName()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1600(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasUserTel()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1700(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasUserDomain()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$1800(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setStatus(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasPhoneVerified()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getPhoneVerified()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setPhoneVerified(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasDistance()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDistance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setDistance(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2200(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    :cond_d
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2300(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    :cond_e
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->access$2500(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public setAvatarUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->avatarUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDepartmentId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->departmentId_:I

    return-object p0
.end method

.method public setDistance(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->distance_:I

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->email_:Ljava/lang/Object;

    return-object p0
.end method

.method public setLatitude(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    return-object p0
.end method

.method public setLatitudeBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->latitude_:Ljava/lang/Object;

    return-object p0
.end method

.method public setLongitude(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    return-object p0
.end method

.method public setLongitudeBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->longitude_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPhoneVerified(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->phoneVerified_:I

    return-object p0
.end method

.method public setStatus(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->status_:I

    return-object p0
.end method

.method public setUserDomain(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserDomainBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userDomain_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserGender(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userGender_:I

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userId_:I

    return-object p0
.end method

.method public setUserNickName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserNickNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userNickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserRealName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserRealNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userRealName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserTel(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserTelBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->userTel_:Ljava/lang/Object;

    return-object p0
.end method
