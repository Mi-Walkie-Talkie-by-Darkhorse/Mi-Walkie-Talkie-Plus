.class public final enum Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;
.super Ljava/lang/Enum;
.source "SharkProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHARK_CH_UERR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final enum SHARK_CH_EMPTY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final SHARK_CH_EMPTY_VALUE:I = 0x2

.field public static final enum SHARK_CH_ERROR:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final SHARK_CH_ERROR_VALUE:I = 0x1

.field public static final enum SHARK_CH_FORBIDE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final SHARK_CH_FORBIDE_VALUE:I = 0x3

.field public static final enum SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final SHARK_CH_OK_VALUE:I = 0x0

.field public static final enum SHARK_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final SHARK_CH_QUERY_CONTINUE_VALUE:I = 0x4

.field public static final enum SHARK_CH_QUERY_FINISH:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field public static final SHARK_CH_QUERY_FINISH_VALUE:I = 0x5

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;",
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

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const-string v1, "SHARK_CH_OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const-string v1, "SHARK_CH_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_ERROR:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const-string v1, "SHARK_CH_EMPTY"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_EMPTY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const-string v1, "SHARK_CH_FORBIDE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_FORBIDE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const-string v1, "SHARK_CH_QUERY_CONTINUE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const-string v1, "SHARK_CH_QUERY_FINISH"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_FINISH:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_ERROR:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_EMPTY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_FORBIDE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_FINISH:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->$VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->values()[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_ERROR:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_EMPTY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_FORBIDE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_QUERY_FINISH:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->$VALUES:[Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
