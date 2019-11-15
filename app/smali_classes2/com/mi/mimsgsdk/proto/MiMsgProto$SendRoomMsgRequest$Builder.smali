.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private bodyType_:I

.field private body_:Lcom/google/protobuf/ByteString;

.field private fromGuid_:Ljava/lang/Object;

.field private fromMuid_:J

.field private msgId_:J

.field private toGrid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$21900()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$21600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22100()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22302(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22402(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22502(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromMuid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22602(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->msgId_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22702(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;J)J

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22802(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bodyType_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22902(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;I)I

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$23002(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onBuilt()V

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromMuid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->msgId_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bodyType_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBody()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBodyType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bodyType_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFromGuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getFromGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFromMuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgId()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->msgId_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToGrid()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getToGrid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->appid_:I

    return v0
.end method

.method public getBody()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBodyType()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bodyType_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$21600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFromGuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getFromMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromMuid_:J

    return-wide v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->msgId_:J

    return-wide v0
.end method

.method public getToGrid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getToGridBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBody()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

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

.method public hasBodyType()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

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

.method public hasFromGuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

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

.method public hasFromMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

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

.method public hasMsgId()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

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

.method public hasToGrid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$21700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->hasAppid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->hasToGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->hasFromGuid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->hasBody()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasToGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22400(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasFromGuid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->access$22500(Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasFromMuid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getFromMuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setFromMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getMsgId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setMsgId(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->hasBodyType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getBodyType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setBodyType(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setBody(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->body_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setBodyType(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bodyType_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setFromGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setFromGuidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromGuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setFromMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->fromMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgId(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->msgId_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setToGrid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setToGridBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->toGrid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->onChanged()V

    return-object p0
.end method
