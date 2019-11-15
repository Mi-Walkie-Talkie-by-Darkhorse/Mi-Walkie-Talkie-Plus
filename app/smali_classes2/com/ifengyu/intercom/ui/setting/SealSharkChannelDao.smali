.class public Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;
.super Lorg/greenrobot/greendao/a;
.source "SealSharkChannelDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/a",
        "<",
        "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "SEAL_SHARK_CHANNEL"


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2

    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Ljava/lang/Long;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;J)Ljava/lang/Long;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Z)V

    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j(I)V

    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p2, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 8

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0xc

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0xe

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v0, v2

    :goto_1
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void

    :cond_2
    move-wide v0, v4

    goto :goto_0

    :cond_3
    move-wide v0, v4

    goto :goto_1

    :cond_4
    move-wide v2, v4

    goto :goto_2
.end method

.method protected final a(Lorg/greenrobot/greendao/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 8

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-interface {p1}, Lorg/greenrobot/greendao/a/c;->d()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v6, 0xc

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v0, v2

    :goto_0
    invoke-interface {p1, v6, v0, v1}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xd

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v6, 0xe

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v0, v2

    :goto_1
    invoke-interface {p1, v6, v0, v1}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xf

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    return-void

    :cond_2
    move-wide v0, v4

    goto :goto_0

    :cond_3
    move-wide v0, v4

    goto :goto_1

    :cond_4
    move-wide v2, v4

    goto :goto_2
.end method

.method public b(Landroid/database/Cursor;I)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 18

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_2
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    :goto_3
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_4
    invoke-direct/range {v2 .. v17}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>(Ljava/lang/Long;IIIIILjava/lang/String;IIIIZIZZ)V

    return-object v2

    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    goto :goto_4
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method protected synthetic bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->a(Lorg/greenrobot/greendao/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->b(Landroid/database/Cursor;I)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->a(Landroid/database/Cursor;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannelDao;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
