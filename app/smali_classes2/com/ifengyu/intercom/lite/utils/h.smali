.class public Lcom/ifengyu/intercom/lite/utils/h;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/network/d/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/lite/utils/a;->a:Lcom/ifengyu/intercom/lite/utils/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static varargs a(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/q/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    new-instance v2, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;-><init>()V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceColor(I)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceType(I)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/lite/f/e;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)J

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->d(Z)V

    return-void
.end method
