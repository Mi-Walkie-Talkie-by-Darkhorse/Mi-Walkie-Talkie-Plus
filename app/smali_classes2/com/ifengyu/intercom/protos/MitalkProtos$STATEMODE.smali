.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
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
    .locals 16

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v3, "DOUBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v5, "DIFFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 4
    new-instance v5, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v7, "SOS_T"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v8}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_T:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 5
    new-instance v7, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v9, "SOS_R"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v10}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_R:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 6
    new-instance v9, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v11, "SCAN_CH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12, v12}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_CH:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 7
    new-instance v11, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v13, "SCAN_FREQ"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14, v14}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_FREQ:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 8
    new-instance v13, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v15, "TEAM_M"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14, v14}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 9
    new-instance v15, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const-string v14, "TEAM_S"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12, v12}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 12
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->B()Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_FREQ:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SCAN_CH:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_R:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SOS_T:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0

    .line 10
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

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
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
