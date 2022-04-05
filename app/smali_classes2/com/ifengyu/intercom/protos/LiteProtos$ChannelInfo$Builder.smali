.class public final Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private rxCss_:I

.field private rxFreq_:I

.field private seq_:I

.field private txCss_:I

.field private txFreq_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8900()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->D()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->seq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9302(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxFreq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9402(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txFreq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9502(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxCss_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9602(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;I)I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txCss_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9702(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;I)I

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->access$9802(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->seq_:I

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxFreq_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txFreq_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxCss_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txCss_:I

    and-int/lit8 v0, v1, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRxCss()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRxFreq()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSeq()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->seq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTxCss()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTxFreq()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->D()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxCss_:I

    return v0
.end method

.method public getRxFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxFreq_:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->seq_:I

    return v0
.end method

.method public getTxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txCss_:I

    return v0
.end method

.method public getTxFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txFreq_:I

    return v0
.end method

.method public hasRxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasRxFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasSeq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

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

.method public hasTxFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->E()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setRxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setRxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->rxFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSeq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->seq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setTxCss(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setTxFreq(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo$Builder;->txFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
