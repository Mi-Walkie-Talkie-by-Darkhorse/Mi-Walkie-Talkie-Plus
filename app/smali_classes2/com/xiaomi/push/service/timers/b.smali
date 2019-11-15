.class Lcom/xiaomi/push/service/timers/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/timers/a$a;


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroid/content/Context;

.field private volatile c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/xiaomi/push/service/timers/b;->b:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    iput-object p1, p0, Lcom/xiaomi/push/service/timers/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 6

    const-class v0, Landroid/app/AlarmManager;

    :try_start_0
    const-string v1, "setExact"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/timers/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    const-string v0, "unregister timer"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    return-void
.end method

.method public a(Landroid/content/Intent;J)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/push/service/timers/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/xiaomi/push/service/timers/b;->b:Landroid/content/Context;

    invoke-static {v1, v4, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "setExactAndAllowWhileIdle"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/xiaomi/push/service/timers/b;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/b;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/xiaomi/smack/g;->c()I

    move-result v0

    int-to-long v0, v0

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/timers/b;->a()V

    :cond_1
    if-nez p1, :cond_2

    iget-wide v2, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/timers/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/push/service/timers/b;->a(Landroid/content/Intent;J)V

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    iget-wide v2, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    goto :goto_1
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/xiaomi/push/service/timers/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
