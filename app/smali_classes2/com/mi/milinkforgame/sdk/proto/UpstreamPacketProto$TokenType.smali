.class public final enum Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
.super Ljava/lang/Enum;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

.field public static final enum MNS_TOKEN_TYPE_NULL:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

.field public static final MNS_TOKEN_TYPE_NULL_VALUE:I

.field private static final VALUES:[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    const-string v1, "MNS_TOKEN_TYPE_NULL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->MNS_TOKEN_TYPE_NULL:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    sget-object v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->MNS_TOKEN_TYPE_NULL:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->$VALUES:[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->values()[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->VALUES:[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

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

    iput p3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->index:I

    iput p4, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->MNS_TOKEN_TYPE_NULL:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->VALUES:[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    return-object v0
.end method

.method public static values()[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->$VALUES:[Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    invoke-virtual {v0}, [Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
