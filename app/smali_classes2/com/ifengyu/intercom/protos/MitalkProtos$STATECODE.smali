.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATECODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field public static final enum FAILED:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field public static final FAILED_VALUE:I = 0x1

.field public static final enum FINAL:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field public static final FINAL_VALUE:I = 0x4

.field public static final enum NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field public static final NOTSUPPORT_VALUE:I = 0x3

.field public static final enum PARAMERROR:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field public static final PARAMERROR_VALUE:I = 0x2

.field public static final enum SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field public static final SUCCESS_VALUE:I

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->FAILED:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v3, 0x2

    const-string v4, "PARAMERROR"

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->PARAMERROR:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v4, 0x3

    const-string v5, "NOTSUPPORT"

    invoke-direct {v0, v5, v4, v4, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v5, 0x4

    const-string v6, "FINAL"

    invoke-direct {v0, v6, v5, v5, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->FINAL:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    sget-object v7, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    aput-object v7, v6, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->FAILED:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    aput-object v1, v6, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->PARAMERROR:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    aput-object v1, v6, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
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

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->FINAL:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p0

    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->PARAMERROR:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p0

    :cond_3
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->FAILED:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p0

    :cond_4
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
