.class public Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;
.super Ljava/lang/Object;
.source "UserChannelDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final a:Lorg/greenrobot/greendao/f;

.field public static final b:Lorg/greenrobot/greendao/f;

.field public static final c:Lorg/greenrobot/greendao/f;

.field public static final d:Lorg/greenrobot/greendao/f;

.field public static final e:Lorg/greenrobot/greendao/f;

.field public static final f:Lorg/greenrobot/greendao/f;

.field public static final g:Lorg/greenrobot/greendao/f;

.field public static final h:Lorg/greenrobot/greendao/f;


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

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->a:Lorg/greenrobot/greendao/f;

    new-instance v3, Lorg/greenrobot/greendao/f;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "no"

    const-string v8, "NO"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->b:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "type"

    const-string v7, "TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->c:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->d:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "freq"

    const-string v7, "FREQ"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->e:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "tone"

    const-string v7, "TONE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->f:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "freq2"

    const-string v7, "FREQ2"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->g:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "tone2"

    const-string v7, "TONE2"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->h:Lorg/greenrobot/greendao/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
