.class public final Lcom/ifengyu/intercom/lite/f/b;
.super Ljava/lang/Object;
.source "ChannelDao_Impl.java"

# interfaces
.implements Lcom/ifengyu/intercom/lite/f/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/lite/f/b$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/f/b$a;-><init>(Lcom/ifengyu/intercom/lite/f/b;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->b:Landroidx/room/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "select * from channel where config_id = ?"

    .line 7
    invoke-static {v2, v0}, Landroidx/room/l;->b(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v2

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {v2, v0}, Landroidx/room/l;->bindNull(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/l;->bindLong(IJ)V

    .line 10
    :goto_0
    iget-object v0, v1, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 11
    iget-object v0, v1, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/r/c;->a(Landroidx/room/RoomDatabase;La/g/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 12
    invoke-static {v3, v0}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "config_id"

    .line 13
    invoke-static {v3, v5}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "channel_seq"

    .line 14
    invoke-static {v3, v6}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "receive_freq"

    .line 15
    invoke-static {v3, v7}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "send_freq"

    .line 16
    invoke-static {v3, v8}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "receive_tone_type"

    .line 17
    invoke-static {v3, v9}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "receive_tone_value"

    .line 18
    invoke-static {v3, v10}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "send_tone_type"

    .line 19
    invoke-static {v3, v11}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "send_tone_value"

    .line 20
    invoke-static {v3, v12}, Landroidx/room/r/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 21
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 23
    new-instance v14, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-direct {v14}, Lcom/ifengyu/intercom/lite/models/ChannelModel;-><init>()V

    .line 24
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v4

    goto :goto_2

    .line 25
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 26
    :goto_2
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setId(Ljava/lang/Long;)V

    .line 27
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v4

    goto :goto_3

    .line 28
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 29
    :goto_3
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setConfigId(Ljava/lang/Long;)V

    .line 30
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 31
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setChannelSeq(I)V

    .line 32
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 33
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    .line 34
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 35
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    .line 36
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 37
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneType(I)V

    .line 38
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 39
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneValue(I)V

    .line 40
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 41
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneType(I)V

    .line 42
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 43
    invoke-virtual {v14, v15}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneValue(I)V

    .line 44
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 45
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v2}, Landroidx/room/l;->b()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 47
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {v2}, Landroidx/room/l;->b()V

    .line 49
    throw v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/f/b;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method
