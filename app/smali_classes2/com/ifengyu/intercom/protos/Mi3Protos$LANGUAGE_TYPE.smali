.class public final enum Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;
.super Ljava/lang/Enum;
.source "Mi3Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/Mi3Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LANGUAGE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

.field public static final enum CHINESE:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

.field public static final CHINESE_VALUE:I = 0x1

.field public static final enum CLOSE:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

.field public static final CLOSE_VALUE:I = 0x0

.field public static final enum ENGLISH:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

.field public static final ENGLISH_VALUE:I = 0x2

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;",
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

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    const-string v3, "CHINESE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->CHINESE:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    const-string v5, "ENGLISH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->ENGLISH:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->values()[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->VALUES:[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

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
    iput p3, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos;->J()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

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
            "Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->ENGLISH:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->CHINESE:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->VALUES:[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/Mi3Protos$LANGUAGE_TYPE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
