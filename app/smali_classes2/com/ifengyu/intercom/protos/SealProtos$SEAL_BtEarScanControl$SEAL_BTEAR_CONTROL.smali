.class public final enum Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEAL_BTEAR_CONTROL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

.field public static final enum SEAL_BTEAR_SCAN_PAUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

.field public static final SEAL_BTEAR_SCAN_PAUSE_VALUE:I = 0x1

.field public static final enum SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

.field public static final SEAL_BTEAR_SCAN_START_VALUE:I = 0x0

.field public static final enum SEAL_BTEAR_SCAN_STOP:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

.field public static final SEAL_BTEAR_SCAN_STOP_VALUE:I = 0x2

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    const/4 v1, 0x0

    const-string v2, "SEAL_BTEAR_SCAN_START"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    const/4 v2, 0x1

    const-string v3, "SEAL_BTEAR_SCAN_PAUSE"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_PAUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    const/4 v3, 0x2

    const-string v4, "SEAL_BTEAR_SCAN_STOP"

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_STOP:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    aput-object v5, v4, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_PAUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_STOP:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_PAUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    return-object p0

    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
