.class public Lcom/ifengyu/intercom/ui/SplashActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# instance fields
.field private q:Landroid/os/Bundle;

.field private r:Lio/reactivex/disposables/Disposable;

.field private s:Lpl/droidsonroids/gif/GifImageView;

.field private t:Landroid/widget/TextView;

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->v:I

    return-void
.end method

.method private A()V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/ui/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/g;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/lite/d/f;->c()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/e;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/f;->a:Lcom/ifengyu/intercom/ui/f;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private B()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$a;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/g/a;->e(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;)Lcom/ifengyu/intercom/bean/AdModel;
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->x()Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILpl/droidsonroids/gif/c;)V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$h;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/SplashActivity$h;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lpl/droidsonroids/gif/c;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4, p2}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    add-int/lit8 v1, p1, 0x1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$i;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity$i;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;I)V

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.ifengyu.intercom.FROM_SPLASH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f01003b

    const v0, 0x7f01003c

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->a(Z)Lcom/bumptech/glide/request/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/String;)Lcom/bumptech/glide/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;

    new-instance v0, Lcom/bumptech/glide/load/k/d/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/k/d/c;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/k/d/c;->b()Lcom/bumptech/glide/load/k/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$f;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->t:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$d;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/SplashActivity$d;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:Lpl/droidsonroids/gif/GifImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/ui/SplashActivity$e;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;ILpl/droidsonroids/gif/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(ILpl/droidsonroids/gif/c;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/bean/AdModel;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SplashActivity"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/SplashActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->u:Z

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Landroid/os/Bundle;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object p1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/SplashActivity;)Lpl/droidsonroids/gif/GifImageView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:Lpl/droidsonroids/gif/GifImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/SplashActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->v:I

    return p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->y()V

    return-void
.end method

.method private w()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$g;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private x()Lcom/ifengyu/intercom/bean/AdModel;
    .locals 8
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adcache"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/g;->a(Ljava/io/File;)Lcom/ifengyu/intercom/i/g;

    move-result-object v0

    const-string v1, "admodel"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/g;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/AdModel;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashActivity"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean v3, v0, Lcom/ifengyu/intercom/bean/AdModel;->isPublish:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getPublishTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getPublishTime()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-lez v7, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUnpublishTime()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUnpublishTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private y()V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->A()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/lite/login/LiteLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$b;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$c;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/lite/f/e;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const-class p1, Lcom/ifengyu/intercom/ui/MainActivity;

    goto :goto_0

    :cond_0
    const-class p1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005c

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    const p1, 0x7f090208

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:Lpl/droidsonroids/gif/GifImageView;

    const p1, 0x7f09045a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->t:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:Lpl/droidsonroids/gif/GifImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Landroid/os/Bundle;

    const-string p1, "sp_user"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "userid"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->u:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->z()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->B()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->w()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->f()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Landroid/os/Bundle;

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    return-void
.end method
