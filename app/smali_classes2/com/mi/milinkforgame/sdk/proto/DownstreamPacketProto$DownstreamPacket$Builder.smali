.class public final Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "DownstreamPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacketOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private busiBuff_:Lcom/google/protobuf/ByteString;

.field private busiCode_:I

.field private busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

.field private extra_:Lcom/google/protobuf/ByteString;

.field private miUid_:Ljava/lang/Object;

.field private miUin_:J

.field private mnsCode_:I

.field private mnsErrMsg_:Ljava/lang/Object;

.field private seq_:I

.field private serviceCmd_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;-><init>()V

    return-object v0
.end method

.method private getBusiControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->getBusiControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_a

    :goto_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->seq_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$702(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUin_:J

    invoke-static {v2, v4, v5}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$802(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsCode_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$902(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiCode_:I

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1002(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1102(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1202(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1302(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1402(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1502(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_9

    or-int/lit16 v0, v0, 0x200

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1602(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_2
    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1702(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onBuilt()V

    return-object v2

    :cond_8
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1602(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_2

    :cond_9
    move v1, v0

    goto :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->seq_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUin_:J

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsCode_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiCode_:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearBusiBuff()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiBuff()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBusiCode()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiCode_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBusiControl()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearExtra()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getExtra()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMiUid()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMiUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMiUin()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUin_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMnsCode()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsCode_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMnsErrMsg()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMnsErrMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSeq()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->seq_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServiceCmd()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getServiceCmd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBusiBuff()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBusiCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiCode_:I

    return v0
.end method

.method public getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_0
.end method

.method public getBusiControlBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->getBusiControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    return-object v0
.end method

.method public getBusiControlOrBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMiUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMiUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMiUin()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUin_:J

    return-wide v0
.end method

.method public getMnsCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsCode_:I

    return v0
.end method

.method public getMnsErrMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMnsErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->seq_:I

    return v0
.end method

.method public getServiceCmd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceCmdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasBusiBuff()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasBusiCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasBusiControl()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasExtra()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasMiUid()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasMiUin()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasMnsCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasMnsErrMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method public hasSeq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServiceCmd()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
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

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasSeq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->setSeq(I)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasMiUin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMiUin()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->setMiUin(J)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasMnsCode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMnsCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->setMnsCode(I)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasBusiCode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->setBusiCode(I)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasServiceCmd()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1100(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasBusiBuff()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiBuff()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->setBusiBuff(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getExtra()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->setExtra(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasMnsErrMsg()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1400(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasMiUid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->access$1500(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasBusiControl()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setBusiBuff(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setBusiCode(I)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiCode_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setBusiControl(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->busiControlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setExtra(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->extra_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMiUid(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMiUidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMiUin(J)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->miUin_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMnsCode(I)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsCode_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMnsErrMsg(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setMnsErrMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mnsErrMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setSeq(I)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->seq_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setServiceCmd(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public setServiceCmdBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->serviceCmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->onChanged()V

    return-object p0
.end method
