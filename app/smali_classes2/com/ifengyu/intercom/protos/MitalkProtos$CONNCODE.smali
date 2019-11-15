.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;
.super Ljava/lang/Enum;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final enum ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final ALLOW_VALUE:I = 0x2

.field public static final enum CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final CONNECT_VALUE:I = 0x1

.field public static final enum DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final DISCONNECT_VALUE:I = 0x0

.field public static final enum REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final enum REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final REFUSE_LOWPOWER_VALUE:I = 0x5

.field public static final REFUSE_VALUE:I = 0x3

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final enum WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field public static final WAIT_VALUE:I = 0x4

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const-string v1, "REFUSE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const-string v1, "REFUSE_LOWPOWER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->CONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
