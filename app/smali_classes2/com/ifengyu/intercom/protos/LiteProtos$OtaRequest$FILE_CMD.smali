.class public final enum Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
.super Ljava/lang/Enum;
.source "LiteProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_CMD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field public static final enum COMPLETE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field public static final COMPLETE_VALUE:I = 0x2

.field public static final enum REBOOT:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field public static final REBOOT_VALUE:I = 0x3

.field public static final enum START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field public static final START_VALUE:I = 0x1

.field private static final VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    const/4 v3, 0x2

    const-string v4, "COMPLETE"

    invoke-direct {v0, v4, v2, v2, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->COMPLETE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    const/4 v4, 0x3

    const-string v5, "REBOOT"

    invoke-direct {v0, v5, v3, v3, v4}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->REBOOT:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    new-array v4, v4, [Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 4
    sget-object v5, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    aput-object v5, v4, v1

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->COMPLETE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->$VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->values()[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

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
    iput p3, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->index:I

    .line 3
    iput p4, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->REBOOT:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->COMPLETE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->$VALUES:[Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
