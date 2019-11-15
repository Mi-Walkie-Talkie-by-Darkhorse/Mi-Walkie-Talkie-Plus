.class public Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;
.super Ljava/lang/Object;
.source "DepartmentEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Created:Lorg/greenrobot/greendao/f;

.field public static final DepartId:Lorg/greenrobot/greendao/f;

.field public static final DepartName:Lorg/greenrobot/greendao/f;

.field public static final Id:Lorg/greenrobot/greendao/f;

.field public static final Priority:Lorg/greenrobot/greendao/f;

.field public static final Status:Lorg/greenrobot/greendao/f;

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

    sput-object v0, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->Id:Lorg/greenrobot/greendao/f;

    new-instance v3, Lorg/greenrobot/greendao/f;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "departId"

    const-string v8, "DEPART_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->DepartId:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "departName"

    const-string v7, "DEPART_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->DepartName:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "priority"

    const-string v7, "PRIORITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->Priority:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "status"

    const-string v7, "STATUS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->Status:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "created"

    const-string v7, "CREATED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->Created:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "updated"

    const-string v7, "UPDATED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao$Properties;->Updated:Lorg/greenrobot/greendao/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
