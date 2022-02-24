.class Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;
.super Ljava/util/TimerTask;
.source "TrackRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/service/TrackRecordService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;I)I

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;F)F

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F

    move-result v5

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;->a(IIIF)V

    .line 7
    :cond_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v3

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v3, "%02d:%02d:%02d"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v3, 0x7f09044d

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v0

    const/16 v1, 0x3e8

    const v3, 0x7f09044b

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "%.1f"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f09044c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "km/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->m(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/Integer;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/Integer;)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_3
    return-void
.end method
