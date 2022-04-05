.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

.field private fCrc32_:I

.field private fPackNum_:I

.field private fSize_:I

.field private fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field private fVersion_:I

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12000()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12402(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12502(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12602(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fSize_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12702(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCrc32_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12802(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fVersion_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$12902(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;I)I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fPackNum_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$13002(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;I)I

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->access$13102(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->version_:I

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fSize_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCrc32_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fVersion_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fPackNum_:I

    and-int/lit8 v0, v1, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFCmd()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;->START:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFCrc32()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCrc32_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFPackNum()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fPackNum_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFSize()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fSize_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFType()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fVersion_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->e()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFCmd()Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    return-object v0
.end method

.method public getFCrc32()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCrc32_:I

    return v0
.end method

.method public getFPackNum()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fPackNum_:I

    return v0
.end method

.method public getFSize()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fSize_:I

    return v0
.end method

.method public getFType()Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object v0
.end method

.method public getFVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fVersion_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->version_:I

    return v0
.end method

.method public hasFCmd()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

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

.method public hasFCrc32()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

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

.method public hasFPackNum()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFSize()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

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

.method public hasFType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

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

.method public hasFVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setFCmd(Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFCrc32(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fCrc32_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setFPackNum(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fPackNum_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setFSize(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fSize_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setFType(Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->fVersion_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
