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

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/greendao/dao/a$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/a/a;II)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "greenDAO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading schema from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "ALTER TABLE USER_LOCATION ADD \"FREQ\" INT DEFAULT 0"

    invoke-interface {p1, v0}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;)V

    :pswitch_1
    invoke-static {p1, v3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    :pswitch_2
    const-string v0, "DROP TABLE IF EXISTS USER_DEFINE_CHANNEL"

    const-string v1, "DROP TABLE IF EXISTS USER_RELAY_CHANNEL"

    invoke-interface {p1, v0}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    :pswitch_3
    invoke-static {p1, v3}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    :pswitch_4
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;->b(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    goto :goto_0

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
