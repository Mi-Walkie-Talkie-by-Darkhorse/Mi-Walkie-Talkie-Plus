.class Landroid/support/v7/app/NotificationCompat$LollipopExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LollipopExtender"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 2

    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->access$600(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_0

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_0
    invoke-static {v1, p1}, Landroid/support/v7/app/NotificationCompat;->access$700(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-static {v1, p1}, Landroid/support/v7/app/NotificationCompat;->access$800(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-object v1
.end method
