.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;"
    }
.end annotation


# instance fields
.field private altitude_:I

.field private bitField0_:I

.field private ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

.field private freq_:I

.field private latitude_:I

.field private longitude_:I

.field private time_:I

.field private userId_:I

.field private userName_:Lcom/google/protobuf/ByteString;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;->DISABLE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;->DISABLE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10400()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$10600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$10802(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$10902(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;)Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11002(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11102(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->longitude_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11202(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->latitude_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11302(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->altitude_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11402(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->time_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11502(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x100

    :cond_8
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->freq_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11602(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->access$11702(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->version_:I

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;->DISABLE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userId_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->longitude_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->latitude_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->altitude_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->time_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->freq_:I

    and-int/lit16 v0, v1, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAltitude()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->altitude_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;->DISABLE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFreq()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->freq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLatitude()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->latitude_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLongitude()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->longitude_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTime()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->time_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserName()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->altitude_:I

    return v0
.end method

.method public getCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->freq_:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->latitude_:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->longitude_:I

    return v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->time_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->version_:I

    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

.method public hasCtl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

.method public hasFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLatitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAltitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->altitude_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->ctl_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFreq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->freq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLatitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->latitude_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLongitude(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->longitude_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setTime(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->time_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
