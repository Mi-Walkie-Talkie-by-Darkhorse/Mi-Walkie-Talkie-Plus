.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
.super Ljava/lang/Enum;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field public static final enum CLIENT_TYPE_ANDROID:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field public static final CLIENT_TYPE_ANDROID_VALUE:I = 0x12

.field public static final enum CLIENT_TYPE_IOS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field public static final CLIENT_TYPE_IOS_VALUE:I = 0x11

.field public static final enum CLIENT_TYPE_MAC:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field public static final CLIENT_TYPE_MAC_VALUE:I = 0x2

.field public static final enum CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field public static final CLIENT_TYPE_WINDOWS_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    const-string v1, "CLIENT_TYPE_WINDOWS"

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    const-string v1, "CLIENT_TYPE_MAC"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_MAC:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    const-string v1, "CLIENT_TYPE_IOS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_IOS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    const-string v1, "CLIENT_TYPE_ANDROID"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_ANDROID:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_MAC:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_IOS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_ANDROID:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_MAC:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_IOS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_ANDROID:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->value:I

    return v0
.end method
