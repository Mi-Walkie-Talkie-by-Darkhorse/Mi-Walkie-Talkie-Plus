.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ConnectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ConnectOrBuilder;"
    }
.end annotation


# instance fields
.field private appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

.field private bitField0_:I

.field private btmac_:Lcom/google/protobuf/ByteString;

.field private connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field private deviceId_:I

.field private deviceType_:I

.field private language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;->SHARK_OWN_APP:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->SHARK_CHINESE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    sget-object p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;->SHARK_OWN_APP:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    sget-object p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->SHARK_CHINESE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceType_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$1002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$1102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$1202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->access$1302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->version_:I

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceId_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceType_:I

    and-int/lit8 v0, v1, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;->SHARK_OWN_APP:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->SHARK_CHINESE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;->SHARK_OWN_APP:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBtmac()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getBtmac()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConnCode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceType_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLanguage()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->SHARK_CHINESE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    return-object v0
.end method

.method public getBtmac()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConnCode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceId_:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceType_:I

    return v0
.end method

.method public getLanguage()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->version_:I

    return v0
.end method

.method public hasAppMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBtmac()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLanguage()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAppMode(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->appMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_APPTYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setBtmac(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->btmac_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setConnCode(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceType(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->deviceType_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLanguage(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->language_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
