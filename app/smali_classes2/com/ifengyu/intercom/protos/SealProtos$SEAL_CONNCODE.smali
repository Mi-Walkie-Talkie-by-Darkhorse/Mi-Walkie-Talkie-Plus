.class public final enum Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
.super Ljava/lang/Enum;
.source "SealProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEAL_CONNCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final enum SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_ALLOW_VALUE:I = 0x4

.field public static final enum SEAL_BUSY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_BUSY_VALUE:I = 0xc

.field public static final enum SEAL_CONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_CONNECT_VALUE:I = 0x1

.field public static final enum SEAL_DISCONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_DISCONNECT_VALUE:I = 0x0

.field public static final enum SEAL_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_DIS_ALLOW_VALUE:I = 0x8

.field public static final enum SEAL_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_DIS_LOWPOWER_VALUE:I = 0xb

.field public static final enum SEAL_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_DIS_REFUSE_VALUE:I = 0x9

.field public static final enum SEAL_DIS_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_DIS_WAIT_VALUE:I = 0xa

.field public static final enum SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_LOWPOWER_VALUE:I = 0x7

.field public static final enum SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_REFUSE_VALUE:I = 0x5

.field public static final enum SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field public static final SEAL_WAIT_VALUE:I = 0x6

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v1, "SEAL_DISCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DISCONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v3, "SEAL_CONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_CONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v5, "SEAL_ALLOW"

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 4
    new-instance v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v8, "SEAL_REFUSE"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v5, v8, v9, v9, v10}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 5
    new-instance v8, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v11, "SEAL_WAIT"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v7, v12}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 6
    new-instance v11, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v13, "SEAL_LOWPOWER"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v10, v14}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 7
    new-instance v13, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v15, "SEAL_DIS_ALLOW"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v12, v10}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 8
    new-instance v15, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v12, "SEAL_DIS_REFUSE"

    const/16 v7, 0x9

    invoke-direct {v15, v12, v14, v14, v7}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 9
    new-instance v12, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v14, "SEAL_DIS_WAIT"

    const/16 v9, 0xa

    invoke-direct {v12, v14, v10, v10, v9}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 10
    new-instance v14, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v10, "SEAL_DIS_LOWPOWER"

    const/16 v6, 0xb

    invoke-direct {v14, v10, v7, v7, v6}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 11
    new-instance v10, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    const-string v7, "SEAL_BUSY"

    const/16 v4, 0xc

    invoke-direct {v10, v7, v9, v9, v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_BUSY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    new-array v4, v6, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v11, v4, v0

    const/4 v0, 0x6

    aput-object v13, v4, v0

    const/4 v0, 0x7

    aput-object v15, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    aput-object v10, v4, v9

    .line 12
    sput-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    .line 13
    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

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
    iput p3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->D()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_BUSY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DIS_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_CONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_DISCONNECT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 14
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->$VALUES:[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
