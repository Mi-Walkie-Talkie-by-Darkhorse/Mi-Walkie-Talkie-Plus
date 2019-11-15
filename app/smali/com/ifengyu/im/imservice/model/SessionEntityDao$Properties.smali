.class public Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;
.super Ljava/lang/Object;
.source "SessionEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/model/SessionEntityDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Content:Lorg/greenrobot/greendao/f;

.field public static final Id:Lorg/greenrobot/greendao/f;

.field public static final LatestMsgData:Lorg/greenrobot/greendao/f;

.field public static final LatestMsgId:Lorg/greenrobot/greendao/f;

.field public static final LatestMsgType:Lorg/greenrobot/greendao/f;

.field public static final SessionId:Lorg/greenrobot/greendao/f;

.field public static final SessionKey:Lorg/greenrobot/greendao/f;

.field public static final SessionType:Lorg/greenrobot/greendao/f;

.field public static final Tag:Lorg/greenrobot/greendao/f;

.field public static final TalkId:Lorg/greenrobot/greendao/f;

.field public static final Time:Lorg/greenrobot/greendao/f;

.field public static final UnreadCount:Lorg/greenrobot/greendao/f;


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

    sput-object v0, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->Id:Lorg/greenrobot/greendao/f;

    new-instance v3, Lorg/greenrobot/greendao/f;

    const-class v5, Ljava/lang/String;

    const-string v6, "sessionId"

    const-string v8, "SESSION_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->SessionId:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "sessionType"

    const-string v7, "SESSION_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->SessionType:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "latestMsgType"

    const-string v7, "LATEST_MSG_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->LatestMsgType:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "latestMsgId"

    const-string v7, "LATEST_MSG_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->LatestMsgId:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "latestMsgData"

    const-string v7, "LATEST_MSG_DATA"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->LatestMsgData:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "unreadCount"

    const-string v7, "UNREAD_COUNT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->UnreadCount:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "content"

    const-string v7, "CONTENT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->Content:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "time"

    const-string v7, "TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->Time:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x9

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "tag"

    const-string v7, "TAG"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->Tag:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "sessionKey"

    const-string v7, "SESSION_KEY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->SessionKey:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "talkId"

    const-string v7, "TALK_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/im/imservice/model/SessionEntityDao$Properties;->TalkId:Lorg/greenrobot/greendao/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
