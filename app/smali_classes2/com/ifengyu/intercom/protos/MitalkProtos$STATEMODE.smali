.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATEMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final enum DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final DIFFER_VALUE:I = 0x2

.field public static final enum DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final DOUBLE_VALUE:I = 0x1

.field public static final enum SCAN_CH:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final SCAN_CH_VALUE:I = 0x5

.field public static final enum SCAN_FREQ:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final SCAN_FREQ_VALUE:I = 0x6

.field public static final enum SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final SINGLE_VALUE:I = 0x0

.field public static final enum SOS_R:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final SOS_R_VALUE:I = 0x4

.field public static final enum SOS_T:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final SOS_T_VALUE:I = 0x3

.field public static final enum TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final TEAM_M_VALUE:I = 0x7

.field public static final enum TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field public static final TEAM_S_VALUE:I = 0x8

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v1, 0x0

    const-string v2, "SINGLE"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v2, 0x1

    const-string v3, "DOUBLE"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v3, 0x2

    const-string v4, "DIFFER"

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v4, 0x3

    const-string v5, "SOS_T"

    invoke-direct {v0, v5, v4, v4, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_T:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v5, 0x4

    const-string v6, "SOS_R"

    invoke-direct {v0, v6, v5, v5, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_R:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v6, 0x5

    const-string v7, "SCAN_CH"

    invoke-direct {v0, v7, v6, v6, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_CH:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v7, 0x6

    const-string v8, "SCAN_FREQ"

    invoke-direct {v0, v8, v7, v7, v7}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_FREQ:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v8, 0x7

    const-string v9, "TEAM_M"

    invoke-direct {v0, v9, v8, v8, v8}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/16 v9, 0x8

    const-string v10, "TEAM_S"

    invoke-direct {v0, v10, v9, v9, v9}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    sget-object v11, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v11, v10, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_T:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v4

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_R:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_CH:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v6

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_FREQ:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v7

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

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
            "Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_FREQ:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_CH:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_R:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_T:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
