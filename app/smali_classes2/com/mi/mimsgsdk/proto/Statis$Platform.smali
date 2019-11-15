.class public final enum Lcom/mi/mimsgsdk/proto/Statis$Platform;
.super Ljava/lang/Enum;
.source "Statis.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/Statis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/mimsgsdk/proto/Statis$Platform;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/mimsgsdk/proto/Statis$Platform;

.field public static final enum ANDROID:Lcom/mi/mimsgsdk/proto/Statis$Platform;

.field public static final ANDROID_VALUE:I = 0x1

.field public static final enum IOS:Lcom/mi/mimsgsdk/proto/Statis$Platform;

.field public static final IOS_VALUE:I = 0x2

.field public static final enum PC:Lcom/mi/mimsgsdk/proto/Statis$Platform;

.field public static final PC_VALUE:I = 0x4

.field public static final enum SERVER:Lcom/mi/mimsgsdk/proto/Statis$Platform;

.field public static final SERVER_VALUE:I = 0x3

.field private static final VALUES:[Lcom/mi/mimsgsdk/proto/Statis$Platform;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mi/mimsgsdk/proto/Statis$Platform;",
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

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/mi/mimsgsdk/proto/Statis$Platform;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->ANDROID:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mi/mimsgsdk/proto/Statis$Platform;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->IOS:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/mi/mimsgsdk/proto/Statis$Platform;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->SERVER:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;

    const-string v1, "PC"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/mi/mimsgsdk/proto/Statis$Platform;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->PC:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    new-array v0, v6, [Lcom/mi/mimsgsdk/proto/Statis$Platform;

    sget-object v1, Lcom/mi/mimsgsdk/proto/Statis$Platform;->ANDROID:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/mimsgsdk/proto/Statis$Platform;->IOS:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/mimsgsdk/proto/Statis$Platform;->SERVER:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mimsgsdk/proto/Statis$Platform;->PC:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->$VALUES:[Lcom/mi/mimsgsdk/proto/Statis$Platform;

    new-instance v0, Lcom/mi/mimsgsdk/proto/Statis$Platform$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/Statis$Platform$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$Platform;->values()[Lcom/mi/mimsgsdk/proto/Statis$Platform;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->VALUES:[Lcom/mi/mimsgsdk/proto/Statis$Platform;

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

    iput p3, p0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->index:I

    iput p4, p0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/mi/mimsgsdk/proto/Statis$Platform;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mi/mimsgsdk/proto/Statis$Platform;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->ANDROID:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->IOS:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->SERVER:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->PC:Lcom/mi/mimsgsdk/proto/Statis$Platform;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mi/mimsgsdk/proto/Statis$Platform;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$Platform;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->VALUES:[Lcom/mi/mimsgsdk/proto/Statis$Platform;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/Statis$Platform;
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;

    return-object v0
.end method

.method public static values()[Lcom/mi/mimsgsdk/proto/Statis$Platform;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->$VALUES:[Lcom/mi/mimsgsdk/proto/Statis$Platform;

    invoke-virtual {v0}, [Lcom/mi/mimsgsdk/proto/Statis$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/mimsgsdk/proto/Statis$Platform;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$Platform;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/Statis$Platform;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/Statis$Platform;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
