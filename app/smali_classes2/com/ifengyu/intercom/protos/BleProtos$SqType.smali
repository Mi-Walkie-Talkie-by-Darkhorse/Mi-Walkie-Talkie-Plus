.class public final enum Lcom/ifengyu/intercom/protos/BleProtos$SqType;
.super Ljava/lang/Enum;
.source "BleProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/BleProtos$SqType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field public static final enum SQ_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field public static final SQ_NORMAL_VALUE:I = 0x1

.field public static final enum SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field public static final SQ_OFF_VALUE:I = 0x0

.field public static final enum SQ_SENSITIVE:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field public static final SQ_SENSITIVE_VALUE:I = 0x2

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/BleProtos$SqType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    const-string v1, "SQ_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    const-string v3, "SQ_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    const-string v5, "SQ_SENSITIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_SENSITIVE:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->$VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$SqType$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->values()[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

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
            "Lcom/ifengyu/intercom/protos/BleProtos$SqType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_SENSITIVE:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->$VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/BleProtos$SqType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method