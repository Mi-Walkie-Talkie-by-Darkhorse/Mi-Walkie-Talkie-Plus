.class public final Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$LocationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/BleProtos$LocationInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private altitude_:I

.field private bitField0_:I

.field private ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private latitude_:I

.field private longitude_:I

.field private rxCss_:I

.field private timestamp_:I

.field private userFreq_:I

.field private userId_:I

.field private userName_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 8
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$11300()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$11500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$11702(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$11802(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$11902(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userFreq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12002(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->longitude_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12102(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->latitude_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12202(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->altitude_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12302(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->timestamp_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12402(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->rxCss_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12502(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    .line 14
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->access$12602(Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;I)I

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 7
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userId_:I

    and-int/lit8 v0, v0, -0x3

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 10
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v0, v0, -0x5

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 12
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userFreq_:I

    and-int/lit8 v0, v0, -0x9

    .line 13
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 14
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->longitude_:I

    and-int/lit8 v0, v0, -0x11

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 16
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->latitude_:I

    and-int/lit8 v0, v0, -0x21

    .line 17
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 18
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->altitude_:I

    and-int/lit8 v0, v0, -0x41

    .line 19
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 20
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->timestamp_:I

    and-int/lit16 v0, v0, -0x81

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 22
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->rxCss_:I

    and-int/lit16 v0, v0, -0x101

    .line 23
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAltitude()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->altitude_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCtlsync()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLatitude()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->latitude_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLongitude()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->longitude_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRxCss()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->rxCss_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->timestamp_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserFreq()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userFreq_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserName()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->altitude_:I

    return v0
.end method

.method public getCtlsync()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->latitude_:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->longitude_:I

    return v0
.end method

.method public getRxCss()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->rxCss_:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->timestamp_:I

    return v0
.end method

.method public getUserFreq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userFreq_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAltitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method public hasCtlsync()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLatitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method public hasRxCss()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method public hasUserFreq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAltitude(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->altitude_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setCtlsync(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLatitude(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->latitude_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLongitude(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->longitude_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setRxCss(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->rxCss_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->timestamp_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserFreq(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userFreq_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
