.class public final enum Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;
.super Ljava/lang/Enum;
.source "SealProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEAL_BTEAR_ITEM_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

.field public static final enum SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

.field public static final SEAL_BTEAR_ITEM_OK_VALUE:I

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    const-string v1, "SEAL_BTEAR_ITEM_OK"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->SEAL_BTEAR_ITEM_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem$SEAL_BTEAR_ITEM_RESULT;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
