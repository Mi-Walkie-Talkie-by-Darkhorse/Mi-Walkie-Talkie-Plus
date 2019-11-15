.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;
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
    name = "ServiceID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final enum SID_BUDDY_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_BUDDY_LIST_VALUE:I = 0x2

.field public static final enum SID_FILE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_FILE_VALUE:I = 0x5

.field public static final enum SID_GROUP:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_GROUP_VALUE:I = 0x4

.field public static final enum SID_INTERNAL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_INTERNAL_VALUE:I = 0x8

.field public static final enum SID_LOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_LOGIN_VALUE:I = 0x1

.field public static final enum SID_MSG:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_MSG_VALUE:I = 0x3

.field public static final enum SID_OTHER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_OTHER_VALUE:I = 0x7

.field public static final enum SID_SWITCH_SERVICE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

.field public static final SID_SWITCH_SERVICE_VALUE:I = 0x6

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_LOGIN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_LOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_BUDDY_LIST"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_BUDDY_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_MSG"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_MSG:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_GROUP"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_GROUP:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_FILE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_FILE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_SWITCH_SERVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_SWITCH_SERVICE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_OTHER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_OTHER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const-string v1, "SID_INTERNAL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_INTERNAL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    const/4 v1, 0x0

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_LOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_BUDDY_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_MSG:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_GROUP:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_FILE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_SWITCH_SERVICE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_OTHER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_INTERNAL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_LOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_BUDDY_LIST:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_MSG:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_GROUP:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_FILE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_SWITCH_SERVICE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_OTHER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->SID_INTERNAL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServiceID;->value:I

    return v0
.end method
