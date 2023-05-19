.class public Lcom/ifengyu/intercom/ui/fragment/x1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "SplashFragment.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Z

.field private z:Lpl/droidsonroids/gif/GifImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic A3(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p3, p1, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lpl/droidsonroids/gif/c;->pause()V

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->B:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "url"

    const-string v3, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-array p1, v1, [Landroid/content/Intent;

    aput-object p2, p1, v0

    aput-object v4, p1, p3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/login/LoginActivity;->N(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    .line 13
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 16
    iget-object p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-array p1, v1, [Landroid/content/Intent;

    aput-object p2, p1, v0

    aput-object v4, p1, p3

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private C3()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/o/a;->b()Lcom/ifengyu/intercom/o/b/a;

    move-result-object v0

    const-string v1, "https://cms.ifengyu.com/fymanage/api/splash/?is_publish=1&limit=1"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/o/b/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/o/b/b;

    check-cast v0, Lcom/ifengyu/intercom/o/b/a;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/o/b/a;->c()Lcom/ifengyu/intercom/o/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/x1$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/x1$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/o/d/c;->b(Lcom/ifengyu/intercom/o/c/a;)V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/fragment/x1;)Lpl/droidsonroids/gif/GifImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->z:Lpl/droidsonroids/gif/GifImageView;

    return-object p0
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/fragment/x1;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/fragment/x1;Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->o3(Lcom/ifengyu/intercom/bean/AdModel;)V

    return-void
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/fragment/x1;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/x1;->t3(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    return-void
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/fragment/x1;ILpl/droidsonroids/gif/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/x1;->n3(ILpl/droidsonroids/gif/c;)V

    return-void
.end method

.method static synthetic l3(Lcom/ifengyu/intercom/ui/fragment/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/x1;->r3()V

    return-void
.end method

.method private m3()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/g1;->a:Lcom/ifengyu/intercom/ui/fragment/g1;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private n3(ILpl/droidsonroids/gif/c;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/x1$d;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/x1$d;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;Lpl/droidsonroids/gif/c;)V

    .line 2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4, p2}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    add-int/lit8 v1, p1, 0x1

    int-to-long v1, v1

    .line 3
    invoke-virtual {p2, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/h1;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/ui/fragment/h1;-><init>(I)V

    .line 4
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    .line 8
    invoke-interface {p1, v0}, Lcom/uber/autodispose/m;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private o3(Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->f0(Z)Lcom/bumptech/glide/request/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/h;

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->g(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/g;->q(Ljava/lang/String;)Lcom/bumptech/glide/f;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    new-instance v0, Lcom/bumptech/glide/load/k/d/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/k/d/c;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/k/d/c;->e()Lcom/bumptech/glide/load/k/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->t(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/x1$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/x1$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->n(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->z:Lpl/droidsonroids/gif/GifImageView;

    .line 9
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->l(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method

.method private p3()Lcom/ifengyu/intercom/bean/AdModel;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adcache"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/k;->b(Ljava/io/File;)Lcom/ifengyu/intercom/p/k;

    move-result-object v0

    const-string v1, "admodel"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/p/k;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/AdModel;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashFragment"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-boolean v3, v0, Lcom/ifengyu/intercom/bean/AdModel;->isPublish:Z

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getPublishTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getPublishTime()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-lez v7, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUnpublishTime()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUnpublishTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private q3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private r3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->B:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/login/LoginActivity;->N(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private s3()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/i1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/i1;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;)V

    .line 2
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/x1$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/x1$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/m;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private t3(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->A:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/e1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/e1;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->z:Lpl/droidsonroids/gif/GifImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/f1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/f1;-><init>(Lcom/ifengyu/intercom/ui/fragment/x1;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic u3()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/AMap/style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "style.data"

    invoke-static {v1, v2, v0, v2}, Lcom/ifengyu/library/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "style_extra.data"

    invoke-static {v1, v2, v0, v2}, Lcom/ifengyu/library/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v3(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    int-to-long v0, p0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w3(Lio/reactivex/ObservableEmitter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/x1;->p3()Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/fragment/x1;->q3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    const-wide/16 v7, 0x12c

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    sub-long/2addr v7, v3

    add-long/2addr v7, v0

    .line 5
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 6
    :cond_0
    invoke-interface {p1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic y3(Lpl/droidsonroids/gif/c;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lpl/droidsonroids/gif/c;->pause()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/x1;->r3()V

    return-void
.end method


# virtual methods
.method public synthetic B3(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/fragment/x1;->A3(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;Landroid/view/View;)V

    return-void
.end method

.method protected E2()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->B:Z

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/x1;->s3()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/x1;->C3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/x1;->m3()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090266

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/GifImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->z:Lpl/droidsonroids/gif/GifImageView;

    const v1, 0x7f0904b8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/x1;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/s;->u()V

    return-void
.end method

.method public synthetic x3(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->w3(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic z3(Lpl/droidsonroids/gif/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/x1;->y3(Lpl/droidsonroids/gif/c;Landroid/view/View;)V

    return-void
.end method
