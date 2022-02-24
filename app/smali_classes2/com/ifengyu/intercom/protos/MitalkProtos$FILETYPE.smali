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
        "Ljava/lang/Enum<",
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
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
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
    .locals 12

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BLEUPFILE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v3, 0x2

    const-string v4, "MCUUPFILE"

    invoke-direct {v0, v4, v2, v2, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v4, 0x3

    const-string v5, "GBKFONT16"

    invoke-direct {v0, v5, v3, v3, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v5, 0x4

    const-string v6, "ASCIIFONT16"

    invoke-direct {v0, v6, v4, v4, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v6, 0x5

    const-string v7, "GBKFONTEX"

    invoke-direct {v0, v7, v5, v5, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v7, 0x6

    const-string v8, "ASCIIFONTEX"

    invoke-direct {v0, v8, v6, v6, v7}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/4 v8, 0x7

    const-string v9, "MCUSENDLOG"

    invoke-direct {v0, v9, v7, v7, v8}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/16 v9, 0x8

    const-string v10, "WARNINGTONE"

    invoke-direct {v0, v10, v8, v8, v9}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    const/16 v10, 0x9

    const-string v11, "MCUBLEUPFILE"

    invoke-direct {v0, v11, v9, v9, v10}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUBLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    new-array v10, v10, [Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 10
    sget-object v11, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v11, v10, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v4

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v5

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v6

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v7

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 12
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUBLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->WARNINGTONE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUSENDLOG:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONTEX:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->ASCIIFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->GBKFONT16:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->MCUUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->BLEUPFILE:Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
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
