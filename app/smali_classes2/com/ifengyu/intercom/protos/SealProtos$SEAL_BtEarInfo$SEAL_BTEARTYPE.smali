.class public final enum Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;
.super Ljava/lang/Enum;
.source "SealProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEAL_BTEARTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

.field public static final enum SEAL_BTEAR_CONE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

.field public static final SEAL_BTEAR_CONE_VALUE:I = 0x1

.field public static final enum SEAL_BTEAR_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

.field public static final SEAL_BTEAR_NORMAL_VALUE:I

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    const-string v1, "SEAL_BTEAR_NORMAL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    const-string v1, "SEAL_BTEAR_CONE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_CONE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_CONE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->SEAL_BTEAR_CONE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo$SEAL_BTEARTYPE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
