.class public final enum Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
.super Ljava/lang/Enum;
.source "BCKS3.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

.field public static final enum DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final enum HEAD:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

.field public static final HEAD_VALUE:I = 0x1

.field private static final VALUES:[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->HEAD:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->HEAD:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->$VALUES:[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->values()[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->VALUES:[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

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

    iput p3, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->index:I

    iput p4, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->DEFAULT:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->HEAD:Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->VALUES:[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    return-object v0
.end method

.method public static values()[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->$VALUES:[Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    invoke-virtual {v0}, [Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
