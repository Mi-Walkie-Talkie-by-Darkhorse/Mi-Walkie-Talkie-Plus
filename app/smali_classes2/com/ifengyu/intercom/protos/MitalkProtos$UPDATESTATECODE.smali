.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
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
    name = "UPDATESTATECODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field public static final enum FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field public static final FINISH_VALUE:I = 0x3

.field public static final enum PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field public static final PREPARE_VALUE:I = 0x0

.field public static final enum REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field public static final REQUEST_VALUE:I = 0x1

.field public static final enum RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field public static final RESTART_VALUE:I = 0x4

.field public static final enum TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field public static final TRANSPORT_VALUE:I = 0x2

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;",
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

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const-string v1, "TRANSPORT"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const-string v1, "RESTART"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
