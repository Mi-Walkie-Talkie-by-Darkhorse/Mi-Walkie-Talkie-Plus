.class public final enum Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHOPTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final enum CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final CH_DELETE_VALUE:I = 0x1

.field public static final enum CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final CH_INSERT_VALUE:I = 0x0

.field public static final enum CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final CH_MODIFY_VALUE:I = 0x2

.field public static final enum CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final CH_QUERY_VALUE:I = 0x3

.field public static final enum ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final ST_QUERY_VALUE:I = 0x5

.field public static final enum ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field public static final ST_UPDATE_VALUE:I = 0x4

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v1, 0x0

    const-string v2, "CH_INSERT"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v2, 0x1

    const-string v3, "CH_DELETE"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v3, 0x2

    const-string v4, "CH_MODIFY"

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v4, 0x3

    const-string v5, "CH_QUERY"

    invoke-direct {v0, v5, v4, v4, v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v5, 0x4

    const-string v6, "ST_UPDATE"

    invoke-direct {v0, v6, v5, v5, v5}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v6, 0x5

    const-string v7, "ST_QUERY"

    invoke-direct {v0, v7, v6, v6, v6}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    sget-object v8, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    aput-object v8, v7, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    aput-object v1, v7, v2

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    aput-object v1, v7, v3

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    aput-object v1, v7, v4

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

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

    iput p3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->index:I

    iput p4, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

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
            "Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_UPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0

    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0

    :cond_3
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_MODIFY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0

    :cond_4
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_DELETE:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0

    :cond_5
    sget-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_INSERT:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->$VALUES:[Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
