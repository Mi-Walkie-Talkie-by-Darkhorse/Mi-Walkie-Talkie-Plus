.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

.field private result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$16300()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;-><init>()V

    return-object v0
.end method

.method private getBtEarFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->getBtEar()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->access$16500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->getBtEarFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->access$16702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->access$16802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->access$16902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    :goto_2
    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->access$17002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onBuilt()V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->access$16902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearBtEar()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBtEar()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    goto :goto_0
.end method

.method public getBtEarBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->getBtEarFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    return-object v0
.end method

.method public getBtEarOrBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->version_:I

    return v0
.end method

.method public hasBtEar()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeBtEar(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setBtEar(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setBtEar(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEar_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->btEarBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$Builder;->onChanged()V

    return-object p0
.end method
