.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cssCode2_:I

.field private cssCode_:I

.field private cssInvert2_:I

.field private cssInvert_:I

.field private cssType2_:I

.field private cssType_:I

.field private freq2_:I

.field private freq_:I

.field private name_:Lcom/google/protobuf/ByteString;

.field private no_:I

.field private sq_:I

.field private type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

.field private vox_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->PRESET:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->PRESET:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8400()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$8600()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_c

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$8802(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$8902(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->no_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9002(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9102(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->sq_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9202(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->vox_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9302(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9402(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9502(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9602(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq2_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9702(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType2_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9802(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode2_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$9902(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    and-int/lit16 v1, v3, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert2_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$10002(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->access$10102(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onBuilt()V

    return-object v2

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->PRESET:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->no_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->sq_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->vox_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq2_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType2_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode2_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert2_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCssCode()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCssCode2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCssInvert()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCssInvert2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCssType()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCssType2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFreq()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFreq2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNo()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->no_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSq()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->sq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->PRESET:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVox()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->vox_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCssCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode_:I

    return v0
.end method

.method public getCssCode2()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode2_:I

    return v0
.end method

.method public getCssInvert()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert_:I

    return v0
.end method

.method public getCssInvert2()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert2_:I

    return v0
.end method

.method public getCssType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType_:I

    return v0
.end method

.method public getCssType2()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType2_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq_:I

    return v0
.end method

.method public getFreq2()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq2_:I

    return v0
.end method

.method public getName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->no_:I

    return v0
.end method

.method public getSq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->sq_:I

    return v0
.end method

.method public getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    return-object v0
.end method

.method public getVox()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->vox_:I

    return v0
.end method

.method public hasCssCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasCssCode2()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasCssInvert()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasCssInvert2()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasCssType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasCssType2()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasFreq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFreq2()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasNo()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasSq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasVox()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setCssCode(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCssCode2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssCode2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCssInvert(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCssInvert2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssInvert2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCssType(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setCssType2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->cssType2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setFreq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setFreq2(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->freq2_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setNo(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->no_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setSq(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->sq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->type_:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public setVox(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->vox_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo$Builder;->onChanged()V

    return-object p0
.end method
