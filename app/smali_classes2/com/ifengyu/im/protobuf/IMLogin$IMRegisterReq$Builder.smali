.class public final Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMLogin.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;",
        "Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReqOrBuilder;"
    }
.end annotation


# instance fields
.field private apikey_:Ljava/lang/Object;

.field private appid_:I

.field private appkey_:Ljava/lang/Object;

.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field private clientVersion_:Ljava/lang/Object;

.field private userHandle_:I

.field private userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

.field private userName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$1400()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->create()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMLogin$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$1602(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$1702(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userHandle_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$1802(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$1902(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2002(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2102(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2202(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2302(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2402(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2502(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;I)I

    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clear()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clear()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appid_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userHandle_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearApikey()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getApikey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAppid()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appid_:I

    return-object p0
.end method

.method public clearAppkey()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAttachData()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public clearClientType()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object p0
.end method

.method public clearClientVersion()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUserHandle()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userHandle_:I

    return-object p0
.end method

.method public clearUserInfo()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearUserName()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->create()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appid_:I

    return v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppkeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    return-object v0
.end method

.method public getUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userHandle_:I

    return v0
.end method

.method public getUserInfo()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasApikey()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAppkey()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasClientType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasClientVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasUserHandle()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasUserInfo()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->hasAppid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->hasAppkey()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->setAppid(I)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasAppkey()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$1700(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasUserHandle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getUserHandle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->setUserHandle(I)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasUserName()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$1900(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2000(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasClientType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->setClientType(Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2200(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getUserInfo()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->mergeUserInfo(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->hasAttachData()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->getAttachData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;

    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;->access$2600(Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0
.end method

.method public mergeUserInfo(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->newBuilder(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    :goto_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    goto :goto_0
.end method

.method public setApikey(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method public setApikeyBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method public setAppid(I)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appid_:I

    return-object p0
.end method

.method public setAppkey(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    return-object p0
.end method

.method public setAppkeyBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->appkey_:Ljava/lang/Object;

    return-object p0
.end method

.method public setAttachData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public setClientType(Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public setClientVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->clientVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserHandle(I)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userHandle_:I

    return-object p0
.end method

.method public setUserInfo(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUserInfo(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userInfo_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUserNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMLogin$IMRegisterReq$Builder;->userName_:Ljava/lang/Object;

    return-object p0
.end method
