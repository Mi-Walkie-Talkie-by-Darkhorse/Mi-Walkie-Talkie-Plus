.class public Lcom/xiaomi/mistatistic/sdk/controller/h;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "log getMessage exception :"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    return-void
.end method

.method private static a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-static {v0, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    invoke-static {v0, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    invoke-static {v0, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, v1, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MI_STAT"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
