.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

.field private option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

.field private result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7200()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;-><init>()V

    return-object v0
.end method

.method private getChFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->j()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getChFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$7602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$7702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$7802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x8

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$7902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :goto_2
    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$8002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onBuilt()V

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->access$7902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_0
.end method

.method public getChBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getChFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    return-object v0
.end method

.method public getChOrBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->j()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->version_:I

    return v0
.end method

.method public hasCh()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

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

.method public hasOption()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->k()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$Builder;->onChanged()V

    return-object p0
.end method
