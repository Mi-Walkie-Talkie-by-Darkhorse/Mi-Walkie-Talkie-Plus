.class public final enum Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
.super Ljava/lang/Enum;
.source "SharkProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHARK_SWITCH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field public static final enum SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field public static final SHARK_OFF_VALUE:I = 0x1

.field public static final enum SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field public static final SHARK_ON_VALUE:I = 0x2

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    const-string v1, "SHARK_OFF"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    const-string v1, "SHARK_ON"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    new-array v0, v4, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->$VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->values()[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_ON:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->$VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
