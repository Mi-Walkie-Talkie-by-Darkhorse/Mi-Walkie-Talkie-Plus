.class public final enum Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
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
    name = "VoxType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/BleProtos$VoxType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

.field public static final enum VOX_HEIGHT:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

.field public static final VOX_HEIGHT_VALUE:I = 0x3

.field public static final enum VOX_LOW:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

.field public static final VOX_LOW_VALUE:I = 0x1

.field public static final enum VOX_MIDDLE:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

.field public static final VOX_MIDDLE_VALUE:I = 0x2

.field public static final enum VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

.field public static final VOX_OFF_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/BleProtos$VoxType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    const-string v1, "VOX_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    const-string v3, "VOX_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_LOW:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    const-string v5, "VOX_MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_MIDDLE:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 4
    new-instance v5, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    const-string v7, "VOX_HEIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v8}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_HEIGHT:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->$VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->values()[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

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
    iput p3, p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

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
            "Lcom/ifengyu/intercom/protos/BleProtos$VoxType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_HEIGHT:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_MIDDLE:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_LOW:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->$VALUES:[Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
