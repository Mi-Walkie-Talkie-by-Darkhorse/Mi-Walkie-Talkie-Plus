.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SharkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

.field private ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

.field private currentChId_:I

.field private deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

.field private option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

.field private result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

.field private stateMode_:I

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->SHARK_ST_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->SHARK_ST_UPDATE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->SHARK_ST_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->SHARK_ST_UPDATE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6000()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;-><init>()V

    return-object v0
.end method

.method private getCh1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getCh2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->h()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getCh1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getCh2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->stateMode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_8

    or-int/lit8 v0, v0, 0x20

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_2
    and-int/lit8 v0, v3, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$7002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_3
    and-int/lit16 v0, v3, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_5

    or-int/lit16 v1, v1, 0x80

    :cond_5
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->currentChId_:I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$7102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;I)I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$7202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onBuilt()V

    return-object v2

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$6902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->access$7002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->SHARK_ST_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->SHARK_ST_UPDATE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->stateMode_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->currentChId_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public clearCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCurrentChId()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->currentChId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;->SHARK_ST_UPDATE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->SHARK_ST_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStateMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->stateMode_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_0
.end method

.method public getCh1Builder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getCh1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    return-object v0
.end method

.method public getCh1OrBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_0
.end method

.method public getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_0
.end method

.method public getCh2Builder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getCh2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    return-object v0
.end method

.method public getCh2OrBuilder()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_0
.end method

.method public getCurrentChId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->currentChId_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->h()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    return-object v0
.end method

.method public getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    return-object v0
.end method

.method public getStateMode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->stateMode_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->version_:I

    return v0
.end method

.method public hasCh1()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

.method public hasCh2()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

.method public hasCurrentChId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

.method public hasDeviceMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

.method public hasStateMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->i()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeCh1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeCh2(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCh1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCh1(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCh2(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCh2(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCurrentChId(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->currentChId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceMode(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setOption(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->option_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setStateMode(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->stateMode_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$Builder;->onChanged()V

    return-object p0
.end method
