.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;",
        ">;",
        "Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsgOrBuilder;"
    }
.end annotation


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private fromMuid_:J

.field private msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

.field private toMuid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4800()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMsgFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    iget v3, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->appid_:I

    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5202(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->fromMuid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5302(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->toMuid_:J

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5402(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x8

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5502(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :goto_2
    invoke-static {v2, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5602(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;I)I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onBuilt()V

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->access$5502(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->appid_:I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->fromMuid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->toMuid_:J

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearAppid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFromMuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->fromMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearToMuid()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->toMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->create()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->clone()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->appid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFromMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->fromMuid_:J

    return-wide v0
.end method

.method public getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    goto :goto_0
.end method

.method public getMsgBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    return-object v0
.end method

.method public getMsgOrBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    goto :goto_0
.end method

.method public getToMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->toMuid_:J

    return-wide v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFromMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

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

.method public hasMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

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

.method public hasToMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->hasAppid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->hasToMuid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->hasMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;
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

    invoke-virtual {p0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->hasFromMuid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getFromMuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->setFromMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->hasToMuid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getToMuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->setToMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->hasMsg()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeMsg(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeMsg(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->appid_:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    return-object p0
.end method

.method public setFromMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->fromMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsg(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMsg(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->msgBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setToMuid(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->toMuid_:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg$Builder;->onChanged()V

    return-object p0
.end method
