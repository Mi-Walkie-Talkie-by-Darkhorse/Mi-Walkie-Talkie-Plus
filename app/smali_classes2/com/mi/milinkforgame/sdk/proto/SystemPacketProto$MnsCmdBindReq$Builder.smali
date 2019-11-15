.class public final Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SystemPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReqOrBuilder;"
    }
.end annotation


# instance fields
.field private b2_:Ljava/lang/Object;

.field private bitField0_:I

.field private devicetoken_:Lcom/google/protobuf/ByteString;

.field private gid_:Ljava/lang/Object;

.field private onoff_:Z

.field private passportlogin_:Z

.field private privacyKey_:Ljava/lang/Object;

.field private sUID_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$16800()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$16500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17000()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17202(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17302(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17402(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17502(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17602(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onoff_:Z

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17702(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Z)Z

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->passportlogin_:Z

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17802(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;Z)Z

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17902(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onBuilt()V

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onoff_:Z

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->passportlogin_:Z

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearB2()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getB2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevicetoken()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDevicetoken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGid()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getGid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOnoff()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onoff_:Z

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPassportlogin()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->passportlogin_:Z

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPrivacyKey()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getPrivacyKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSUID()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getSUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getB2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getB2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$16500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevicetoken()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getOnoff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onoff_:Z

    return v0
.end method

.method public getPassportlogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->passportlogin_:Z

    return v0
.end method

.method public getPrivacyKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrivacyKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSUID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSUIDBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasB2()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

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

.method public hasDevicetoken()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

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

.method public hasGid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnoff()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

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

.method public hasPassportlogin()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

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

.method public hasPrivacyKey()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

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

.method public hasSUID()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$16600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->hasGid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->hasB2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->hasPrivacyKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;
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

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasGid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17200(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasB2()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17300(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasPrivacyKey()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17400(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasSUID()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->access$17500(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasDevicetoken()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getDevicetoken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setDevicetoken(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasOnoff()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getOnoff()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setOnoff(Z)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->hasPassportlogin()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getPassportlogin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->setPassportlogin(Z)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setB2(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setB2Bytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->b2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicetoken(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->devicetoken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setGid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setGidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->gid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setOnoff(Z)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onoff_:Z

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setPassportlogin(Z)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->passportlogin_:Z

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setPrivacyKey(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setPrivacyKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->privacyKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setSUID(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setSUIDBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->sUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindReq$Builder;->onChanged()V

    return-object p0
.end method
