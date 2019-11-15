.class public final Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SystemPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

.field private jsonConfig_:Ljava/lang/Object;

.field private timeStamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12100()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;-><init>()V

    return-object v0
.end method

.method private getConfigFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfigOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->getConfig()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->getConfigFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->timeStamp_:J

    invoke-static {v2, v4, v5}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12502(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12602(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    :goto_2
    and-int/lit8 v0, v3, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    or-int/lit8 v1, v1, 0x4

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12702(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12802(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;I)I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onBuilt()V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12602(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->timeStamp_:J

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearConfig()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearJsonConfig()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getJsonConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimeStamp()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->timeStamp_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->create()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->clone()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    goto :goto_0
.end method

.method public getConfigBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->getConfigFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;

    return-object v0
.end method

.method public getConfigOrBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfigOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfigOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getJsonConfig()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getJsonConfigBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->timeStamp_:J

    return-wide v0
.end method

.method public hasConfig()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

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

.method public hasJsonConfig()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

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

.method public hasTimeStamp()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeConfig(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
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

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->setTimeStamp(J)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->hasConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getConfig()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeConfig(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->hasJsonConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->access$12700(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setConfig(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setConfig(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->configBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setJsonConfig(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public setJsonConfigBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->jsonConfig_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->timeStamp_:J

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->onChanged()V

    return-object p0
.end method
