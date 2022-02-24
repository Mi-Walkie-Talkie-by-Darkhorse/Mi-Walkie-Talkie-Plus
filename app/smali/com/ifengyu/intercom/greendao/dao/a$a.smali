.class public Lcom/ifengyu/intercom/greendao/dao/a$a;
.super Lcom/ifengyu/intercom/greendao/dao/a$b;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/greendao/dao/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/greendao/dao/a$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading schema from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "greenDAO"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p3, :cond_0

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "ALTER TABLE USER_LOCATION ADD \"FREQ\" INT DEFAULT 0"

    .line 2
    invoke-interface {p1, p2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 3
    :pswitch_1
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    :pswitch_2
    const-string p2, "DROP TABLE IF EXISTS USER_DEFINE_CHANNEL"

    .line 5
    invoke-interface {p1, p2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS USER_RELAY_CHANNEL"

    .line 6
    invoke-interface {p1, p2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 7
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 8
    :pswitch_3
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    :pswitch_4
    const/4 p2, 0x1

    .line 9
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 10
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
