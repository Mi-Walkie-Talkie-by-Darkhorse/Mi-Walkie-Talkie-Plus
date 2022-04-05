.class public final enum Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHARK_CONNCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final enum SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_ALLOW_VALUE:I = 0x4

.field public static final enum SHARK_BUSY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_BUSY_VALUE:I = 0xc

.field public static final enum SHARK_CONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_CONNECT_VALUE:I = 0x1

.field public static final enum SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_DISCONNECT_VALUE:I = 0x0

.field public static final enum SHARK_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_DIS_ALLOW_VALUE:I = 0x8

.field public static final enum SHARK_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_DIS_LOWPOWER_VALUE:I = 0xb

.field public static final enum SHARK_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_DIS_REFUSE_VALUE:I = 0x9

.field public static final enum SHARK_DIS_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_DIS_WAIT_VALUE:I = 0xa

.field public static final enum SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_LOWPOWER_VALUE:I = 0x7

.field public static final enum SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_REFUSE_VALUE:I = 0x5

.field public static final enum SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field public static final SHARK_WAIT_VALUE:I = 0x6

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/4 v1, 0x0

    const-string v2, "SHARK_DISCONNECT"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/4 v2, 0x1

    const-string v3, "SHARK_CONNECT"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_CONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "SHARK_ALLOW"

    invoke-direct {v0, v5, v3, v3, v4}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/4 v5, 0x3

    const/4 v6, 0x5

    const-string v7, "SHARK_REFUSE"

    invoke-direct {v0, v7, v5, v5, v6}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/4 v7, 0x6

    const-string v8, "SHARK_WAIT"

    invoke-direct {v0, v8, v4, v4, v7}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/4 v8, 0x7

    const-string v9, "SHARK_LOWPOWER"

    invoke-direct {v0, v9, v6, v6, v8}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/16 v9, 0x8

    const-string v10, "SHARK_DIS_ALLOW"

    invoke-direct {v0, v10, v7, v7, v9}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/16 v10, 0x9

    const-string v11, "SHARK_DIS_REFUSE"

    invoke-direct {v0, v11, v8, v8, v10}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/16 v11, 0xa

    const-string v12, "SHARK_DIS_WAIT"

    invoke-direct {v0, v12, v9, v9, v11}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const/16 v12, 0xb

    const-string v13, "SHARK_DIS_LOWPOWER"

    invoke-direct {v0, v13, v10, v10, v12}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    const-string v13, "SHARK_BUSY"

    const/16 v14, 0xc

    invoke-direct {v0, v13, v11, v11, v14}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_BUSY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-array v12, v12, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    sget-object v13, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v13, v12, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_CONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v4

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v6

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v7

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v8

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v9

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->$VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->values()[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->u()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_BUSY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_CONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_DISCONNECT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->$VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
