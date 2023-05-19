.class public final enum Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
.super Ljava/lang/Enum;
.source "LiteProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECT_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final enum ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final ALLOW_VALUE:I = 0x0

.field public static final enum BUSY:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final BUSY_VALUE:I = 0x4

.field public static final enum LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final LOWPOWER_VALUE:I = 0x3

.field public static final enum REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final REFUSE_VALUE:I = 0x1

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final enum WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

.field public static final WAIT_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    const-string v3, "REFUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    const-string v5, "WAIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    .line 4
    new-instance v5, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    const-string v7, "LOWPOWER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v8}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    .line 5
    new-instance v7, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    const-string v9, "BUSY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v10}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->BUSY:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->$VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->values()[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

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
    iput p3, p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->H()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->BUSY:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->$VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
