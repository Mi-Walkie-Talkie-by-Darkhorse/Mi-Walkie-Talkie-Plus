.class public final enum Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

.field public static final enum FY_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

.field public static final FY_APP_VALUE:I = 0x0

.field public static final enum MIJIA_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

.field public static final MIJIA_APP_VALUE:I = 0x1

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    const/4 v1, 0x0

    const-string v2, "FY_APP"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->FY_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    const/4 v2, 0x1

    const-string v3, "MIJIA_APP"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->MIJIA_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    sget-object v4, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->FY_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->values()[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->MIJIA_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->FY_APP:Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->$VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
