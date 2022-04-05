.class public final Lcom/ifengyu/intercom/node/q/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/ifengyu/intercom/node/q/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/q/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q/a;->a:Lcom/ifengyu/intercom/node/q/b;

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 12

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v4, 0x6

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string p0, "NULL_STRING"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    if-gtz v3, :cond_2

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :goto_2
    new-instance p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 8

    invoke-static {}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v7, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isEnabled()Z

    move-result v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceType()I

    move-result v5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceColor()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isConnected()Z

    move-result p1

    invoke-virtual {v7, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public a()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q/a;->a:Lcom/ifengyu/intercom/node/q/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "connConfigs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/ifengyu/intercom/node/q/a;->a(Landroid/database/Cursor;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveConnectionConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnConfigsDBAdapter"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceType(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceColor(I)V

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/lite/f/e;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceType(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceColor(I)V

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/lite/f/e;->b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, "ConnConfigsDBAdapter"

    const-string v1, "loadConnectionConfigs"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/ifengyu/intercom/lite/f/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    new-instance v10, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isEnabled()Z

    move-result v6

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceType()I

    move-result v8

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceColor()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isConnected()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
