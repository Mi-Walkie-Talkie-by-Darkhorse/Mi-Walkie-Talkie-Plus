.class public final Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Mi3Protos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

.field private ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

.field private chIndex_:I

.field private chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

.field private result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 9
    sget-object p1, Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 12
    sget-object p1, Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/Mi3Protos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$11300()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->create()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;-><init>()V

    return-object v0
.end method

.method private getCh1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getCh1()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getCh2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getCh2()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$11500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getCh1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getCh2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/Mi3Protos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$11702(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$11802(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;)Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$11902(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$11902(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    :goto_1
    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_5

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$12002(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$12002(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    :goto_2
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x10

    .line 13
    :cond_6
    iget v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chIndex_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$12102(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;I)I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    or-int/lit8 v3, v3, 0x20

    .line 14
    :cond_7
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$12202(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;)Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    .line 15
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->access$12302(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;I)I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->version_:I

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 8
    sget-object v2, Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_0

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13
    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_1

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 17
    :goto_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 18
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chIndex_:I

    and-int/lit8 v0, v1, -0x11

    .line 19
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 20
    sget-object v1, Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    and-int/lit8 v0, v0, -0x21

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCh1()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCh2()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChIndex()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chIndex_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChOption()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->create()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCh1()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getCh1Builder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getCh1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;

    return-object v0
.end method

.method public getCh1OrBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getCh2()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getCh2Builder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getCh2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;

    return-object v0
.end method

.method public getCh2OrBuilder()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    return-object v0
.end method

.method public getChIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chIndex_:I

    return v0
.end method

.method public getChOption()Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->version_:I

    return v0
.end method

.method public hasCh1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

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

.method public hasCh2()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

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

.method public hasChIndex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

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

.method public hasChOption()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->h()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeCh1(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeCh2(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCh1(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCh1(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch1_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCh2(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCh2(Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2Builder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->ch2_:Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setChIndex(I)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chIndex_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChOption(Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->chOption_:Lcom/ifengyu/intercom/protos/Mi3Protos$CHOPTION;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/Mi3Protos$RESULT;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$ChannelInfoStateResponse$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
