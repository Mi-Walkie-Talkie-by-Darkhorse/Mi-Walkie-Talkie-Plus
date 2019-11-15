.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;
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
    name = "OnlineListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

.field public static final enum ONLINE_LIST_TYPE_FRIEND_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

.field public static final ONLINE_LIST_TYPE_FRIEND_LIST_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    const-string v1, "ONLINE_LIST_TYPE_FRIEND_LIST"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->ONLINE_LIST_TYPE_FRIEND_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    new-array v0, v3, [Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->ONLINE_LIST_TYPE_FRIEND_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->ONLINE_LIST_TYPE_FRIEND_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$OnlineListType;->value:I

    return v0
.end method
