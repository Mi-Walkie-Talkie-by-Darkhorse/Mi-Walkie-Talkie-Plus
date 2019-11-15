.class public Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;
.super Ljava/lang/Object;
.source "UserEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/dao/UserEntityDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Avatar:Lorg/greenrobot/greendao/f;

.field public static final Created:Lorg/greenrobot/greendao/f;

.field public static final DepartmentId:Lorg/greenrobot/greendao/f;

.field public static final Email:Lorg/greenrobot/greendao/f;

.field public static final Expires_in:Lorg/greenrobot/greendao/f;

.field public static final Gender:Lorg/greenrobot/greendao/f;

.field public static final Id:Lorg/greenrobot/greendao/f;

.field public static final Key:Lorg/greenrobot/greendao/f;

.field public static final MainName:Lorg/greenrobot/greendao/f;

.field public static final PeerId:Lorg/greenrobot/greendao/f;

.field public static final Phone:Lorg/greenrobot/greendao/f;

.field public static final PhoneVerified:Lorg/greenrobot/greendao/f;

.field public static final PinyinName:Lorg/greenrobot/greendao/f;

.field public static final RealName:Lorg/greenrobot/greendao/f;

.field public static final Status:Lorg/greenrobot/greendao/f;

.field public static final Token:Lorg/greenrobot/greendao/f;

.field public static final Updated:Lorg/greenrobot/greendao/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/greenrobot/greendao/f;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Id:Lorg/greenrobot/greendao/f;

    new-instance v3, Lorg/greenrobot/greendao/f;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "peerId"

    const-string v8, "PEER_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "mainName"

    const-string v7, "MAIN_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->MainName:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "avatar"

    const-string v7, "AVATAR"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Avatar:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "gender"

    const-string v7, "GENDER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Gender:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "pinyinName"

    const-string v7, "PINYIN_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PinyinName:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "realName"

    const-string v7, "REAL_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->RealName:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "phone"

    const-string v7, "PHONE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Phone:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "email"

    const-string v7, "EMAIL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Email:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x9

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "departmentId"

    const-string v7, "DEPARTMENT_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->DepartmentId:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xa

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "status"

    const-string v7, "STATUS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Status:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xb

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "phoneVerified"

    const-string v7, "PHONE_VERIFIED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PhoneVerified:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "key"

    const-string v7, "KEY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Key:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "token"

    const-string v7, "TOKEN"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Token:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "expires_in"

    const-string v7, "EXPIRES_IN"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Expires_in:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xf

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "created"

    const-string v7, "CREATED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Created:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x10

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "updated"

    const-string v7, "UPDATED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Updated:Lorg/greenrobot/greendao/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
