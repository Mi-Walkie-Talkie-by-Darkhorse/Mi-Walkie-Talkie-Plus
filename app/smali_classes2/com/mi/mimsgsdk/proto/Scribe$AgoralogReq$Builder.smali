.class public final Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Scribe.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReqOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private cmd_:Ljava/lang/Object;

.field private engine_:Ljava/lang/Object;

.field private extra_:Ljava/lang/Object;

.field private sessionRoom_:Ljava/lang/Object;

.field private status_:Ljava/lang/Object;

.field private traceid_:Ljava/lang/Object;

.field private ts_:J

.field private uid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/Scribe$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->create()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->build()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->build()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/Scribe$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$702(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->ts_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$802(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$902(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->uid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1002(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1102(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1202(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1302(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1402(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1502(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1602(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onBuilt()V

    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clear()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->ts_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->uid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCmd()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getCmd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEngine()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExtra()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionRoom()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getSessionRoom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatus()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTraceid()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getTraceid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTs()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->ts_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUid()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->uid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->create()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->clone()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->appid_:I

    return v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCmdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngineBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSessionRoom()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSessionRoomBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStatusBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTraceid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTraceidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTs()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->ts_:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->uid_:J

    return-wide v0
.end method

.method public hasAppid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasCmd()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasEngine()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasExtra()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasSessionRoom()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasTraceid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTs()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    const-class v2, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasTraceid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$700(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasTs()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getTs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setTs(J)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getUid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->setUid(J)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1100(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasSessionRoom()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1200(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasEngine()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1300(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1400(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->access$1500(Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setCmd(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setCmdBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->cmd_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setEngine(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setEngineBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->engine_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setExtraBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionRoom(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionRoomBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->sessionRoom_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatusBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setTraceid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setTraceidBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->traceid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setTs(J)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->ts_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public setUid(J)Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->uid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogReq$Builder;->onChanged()V

    return-object p0
.end method
