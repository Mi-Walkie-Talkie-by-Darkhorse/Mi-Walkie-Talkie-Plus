.class public Lcom/blankj/utilcode/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NotificationUtils$a;,
        Lcom/blankj/utilcode/util/NotificationUtils$Importance;
    }
.end annotation


# direct methods
.method public static a(Lcom/blankj/utilcode/util/NotificationUtils$a;Lcom/blankj/utilcode/util/w$b;)Landroid/app/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/NotificationUtils$a;",
            "Lcom/blankj/utilcode/util/w$b<",
            "Landroidx/core/app/NotificationCompat$b;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/NotificationUtils$a;->b()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4
    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$b;

    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$b;-><init>(Landroid/content/Context;)V

    if-lt v0, v1, :cond_1

    .line 5
    invoke-static {p0}, Lcom/blankj/utilcode/util/NotificationUtils$a;->a(Lcom/blankj/utilcode/util/NotificationUtils$a;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$b;->e(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$b;

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/w$b;->accept(Ljava/lang/Object;)V

    .line 7
    :cond_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
