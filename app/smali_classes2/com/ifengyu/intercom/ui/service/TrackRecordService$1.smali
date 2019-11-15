.class Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const v7, 0x7f100256

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;I)I

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService;F)F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->e(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;->a(IIIF)V

    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%02d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v3

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v2, 0x7f100257

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f100255

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->c(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "km/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->j(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->h(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->i(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->b(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->e(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->l(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->k(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->g(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Landroid/widget/RemoteViews;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/service/TrackRecordService$1;->a:Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->f(Lcom/ifengyu/intercom/ui/service/TrackRecordService;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
