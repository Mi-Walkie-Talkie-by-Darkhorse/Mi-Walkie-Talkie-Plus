.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SharkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private altitude_:I

.field private bitField0_:I

.field private ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private latitude_:I

.field private longitude_:I

.field private rxCss_:I

.field private timeSync_:I

.field private userFreq_:I

.field private userId_:I

.field private userName_:Lcom/google/protobuf/ByteString;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8600()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$8800()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userFreq_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->longitude_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->latitude_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->altitude_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->timeSync_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->rxCss_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$9902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->access$10002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onBuilt()V

    return-object v2

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userFreq_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->longitude_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->latitude_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->altitude_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->timeSync_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->rxCss_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAltitude()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->altitude_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCtlsync()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLatitude()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->latitude_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLongitude()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->longitude_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRxCss()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->rxCss_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimeSync()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->timeSync_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserFreq()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userFreq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserName()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->altitude_:I

    return v0
.end method

.method public getCtlsync()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->latitude_:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->longitude_:I

    return v0
.end method

.method public getRxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->rxCss_:I

    return v0
.end method

.method public getTimeSync()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->timeSync_:I

    return v0
.end method

.method public getUserFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userFreq_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->version_:I

    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasCtlsync()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasLatitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasRxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasTimeSync()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasUserFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAltitude(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->altitude_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCtlsync(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->ctlsync_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLatitude(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->latitude_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLongitude(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->longitude_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setRxCss(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->rxCss_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimeSync(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->timeSync_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserFreq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userFreq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo$Builder;->onChanged()V

    return-object p0
.end method
