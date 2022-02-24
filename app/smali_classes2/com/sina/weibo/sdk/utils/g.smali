.class public Lcom/sina/weibo/sdk/utils/g;
.super Ljava/lang/Object;
.source "SDKNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/utils/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Notification;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/g;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/sina/weibo/sdk/utils/g;->b:Landroid/app/Notification;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/app/Notification;Lcom/sina/weibo/sdk/utils/g;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/utils/g;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/g;->b:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/g;->a:Landroid/content/Context;

    const-string v1, "notification"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Landroid/app/NotificationManager;

    .line 5
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g;->b:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
