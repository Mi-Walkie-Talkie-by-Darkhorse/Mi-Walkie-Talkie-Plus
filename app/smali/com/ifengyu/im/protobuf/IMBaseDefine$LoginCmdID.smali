.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;
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
    name = "LoginCmdID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final enum CID_LOGIN_KICK_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_KICK_USER_VALUE:I = 0x107

.field public static final enum CID_LOGIN_REQ_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_REQ_DEVICETOKEN_VALUE:I = 0x108

.field public static final enum CID_LOGIN_REQ_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_REQ_KICKPCCLIENT_VALUE:I = 0x10a

.field public static final enum CID_LOGIN_REQ_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_REQ_LOGINOUT_VALUE:I = 0x105

.field public static final enum CID_LOGIN_REQ_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_REQ_MSGSERVER_VALUE:I = 0x101

.field public static final enum CID_LOGIN_REQ_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_REQ_USERLOGIN_VALUE:I = 0x103

.field public static final enum CID_LOGIN_REQ_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_REQ_USERREG_VALUE:I = 0x10c

.field public static final enum CID_LOGIN_RES_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_RES_DEVICETOKEN_VALUE:I = 0x109

.field public static final enum CID_LOGIN_RES_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_RES_KICKPCCLIENT_VALUE:I = 0x10b

.field public static final enum CID_LOGIN_RES_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_RES_LOGINOUT_VALUE:I = 0x106

.field public static final enum CID_LOGIN_RES_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_RES_MSGSERVER_VALUE:I = 0x102

.field public static final enum CID_LOGIN_RES_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_RES_USERLOGIN_VALUE:I = 0x104

.field public static final enum CID_LOGIN_RES_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

.field public static final CID_LOGIN_RES_USERREG_VALUE:I = 0x10d

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_REQ_MSGSERVER"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_RES_MSGSERVER"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_REQ_USERLOGIN"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_RES_USERLOGIN"

    const/16 v2, 0x104

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_REQ_LOGINOUT"

    const/16 v2, 0x105

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_RES_LOGINOUT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x106

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_KICK_USER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x107

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_KICK_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_REQ_DEVICETOKEN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x108

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_RES_DEVICETOKEN"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x109

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_REQ_KICKPCCLIENT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x10a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_RES_KICKPCCLIENT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x10b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_REQ_USERREG"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x10c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const-string v1, "CID_LOGIN_RES_USERREG"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x10d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_KICK_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_MSGSERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_USERLOGIN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_LOGINOUT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_KICK_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_DEVICETOKEN:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_KICKPCCLIENT:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_REQ_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->CID_LOGIN_RES_USERREG:Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->value:I

    return v0
.end method
