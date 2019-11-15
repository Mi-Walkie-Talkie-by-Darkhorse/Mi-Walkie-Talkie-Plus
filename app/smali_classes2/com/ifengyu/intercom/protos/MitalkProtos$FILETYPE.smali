.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
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
    name = "FILETYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final enum ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final ASCIIFONT16_VALUE:I = 0x4

.field public static final enum ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final ASCIIFONTEX_VALUE:I = 0x6

.field public static final enum BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final BLEUPFILE_VALUE:I = 0x1

.field public static final enum GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final GBKFONT16_VALUE:I = 0x3

.field public static final enum GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final GBKFONTEX_VALUE:I = 0x5

.field public static final enum MCUBLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final MCUBLEUPFILE_VALUE:I = 0x9

.field public static final enum MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final MCUSENDLOG_VALUE:I = 0x7

.field public static final enum MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final MCUUPFILE_VALUE:I = 0x2

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final enum WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

.field public static final WARNINGTONE_VALUE:I = 0x8

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;",
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

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "BLEUPFILE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "MCUUPFILE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "GBKFONT16"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "ASCIIFONT16"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "GBKFONTEX"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "ASCIIFONTEX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "MCUSENDLOG"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "WARNINGTONE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const-string v1, "MCUBLEUPFILE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUBLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v1, 0x0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUBLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

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
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUBLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
