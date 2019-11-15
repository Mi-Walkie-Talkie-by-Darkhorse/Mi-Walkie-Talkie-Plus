.class public final Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMOther.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;",
        "Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private dbAppid_:I

.field private dbFyappid_:I

.field private dbPort_:I

.field private fyappid_:I

.field private msId_:I

.field private resultCode_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$11200()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->create()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->build()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMOther$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->msId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$11402(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->fyappid_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$11502(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$11602(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->resultCode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$11702(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbPort_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$11802(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbFyappid_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$11902(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbAppid_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$12002(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$12102(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;I)I

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->clear()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->clear()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->msId_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->fyappid_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->appid_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->resultCode_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbPort_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbFyappid_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbAppid_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppid()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->appid_:I

    return-object p0
.end method

.method public clearDbAppid()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbAppid_:I

    return-object p0
.end method

.method public clearDbFyappid()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbFyappid_:I

    return-object p0
.end method

.method public clearDbPort()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbPort_:I

    return-object p0
.end method

.method public clearFyappid()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->fyappid_:I

    return-object p0
.end method

.method public clearMsId()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->msId_:I

    return-object p0
.end method

.method public clearResultCode()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->resultCode_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->create()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->appid_:I

    return v0
.end method

.method public getDbAppid()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbAppid_:I

    return v0
.end method

.method public getDbFyappid()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbFyappid_:I

    return v0
.end method

.method public getDbPort()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbPort_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFyappid()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->fyappid_:I

    return v0
.end method

.method public getMsId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->msId_:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->resultCode_:I

    return v0
.end method

.method public hasAppid()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

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

.method public hasDbAppid()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

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

.method public hasDbFyappid()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

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

.method public hasDbPort()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

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

.method public hasFyappid()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

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

.method public hasMsId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->hasMsId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->hasFyappid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->hasAppid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->hasResultCode()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasMsId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getMsId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setMsId(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasFyappid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getFyappid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setFyappid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setAppid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getResultCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setResultCode(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasDbPort()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getDbPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setDbPort(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasDbFyappid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getDbFyappid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setDbFyappid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->hasDbAppid()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->getDbAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setDbAppid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;->access$12200(Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setAppid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->appid_:I

    return-object p0
.end method

.method public setDbAppid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbAppid_:I

    return-object p0
.end method

.method public setDbFyappid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbFyappid_:I

    return-object p0
.end method

.method public setDbPort(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->dbPort_:I

    return-object p0
.end method

.method public setFyappid(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->fyappid_:I

    return-object p0
.end method

.method public setMsId(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->msId_:I

    return-object p0
.end method

.method public setResultCode(I)Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMMS2DBCheckConfigResponse$Builder;->resultCode_:I

    return-object p0
.end method
