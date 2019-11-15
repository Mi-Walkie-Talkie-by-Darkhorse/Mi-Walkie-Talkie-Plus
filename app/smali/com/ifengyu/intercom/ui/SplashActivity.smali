.class public Lcom/ifengyu/intercom/ui/SplashActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SplashActivity.java"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lio/reactivex/disposables/b;

.field private c:Lpl/droidsonroids/gif/GifImageView;

.field private d:Landroid/widget/TextView;

.field private q:Z

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;)Lcom/ifengyu/intercom/bean/AdModel;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f()Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Lio/reactivex/disposables/b;)Lio/reactivex/disposables/b;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->b:Lio/reactivex/disposables/b;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/SplashActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Ljava/util/List;

    return-object p1
.end method

.method private a(ILpl/droidsonroids/gif/c;)V
    .locals 6

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$8;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/SplashActivity$8;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lpl/droidsonroids/gif/c;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v5, v1}, Lio/reactivex/k;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lio/reactivex/k;->take(J)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/SplashActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity$9;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;I)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v1

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v1

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 3

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(Z)Lcom/bumptech/glide/request/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/g;->b:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/g;

    move-result-object v1

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/b/b;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/b/b;-><init>()V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/b/b;->c()Lcom/bumptech/glide/load/resource/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$6;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$6;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->c:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/SplashActivity$4;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->c:Lpl/droidsonroids/gif/GifImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/ui/SplashActivity$5;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method static synthetic b(Lcom/ifengyu/intercom/ui/SplashActivity;)Lpl/droidsonroids/gif/GifImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->c:Lpl/droidsonroids/gif/GifImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$1;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->c(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/SplashActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->s:I

    return v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$2;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-static {v0}, Lio/reactivex/k;->create(Lio/reactivex/m;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$3;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v1, Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.intercom.FROM_SPLASH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f050023

    const v1, 0x7f050024

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->overridePendingTransition(II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ifengyu/intercom/ui/SplashActivity$7;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/SplashActivity$7;-><init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->finish()V

    return-void

    :cond_1
    const-class v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    goto :goto_0

    :cond_2
    const-class v0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    goto :goto_0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->e()V

    return-void
.end method

.method private f()Lcom/ifengyu/intercom/bean/AdModel;
    .locals 8
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adcache"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/a;->a(Ljava/io/File;)Lcom/ifengyu/intercom/b/a;

    move-result-object v0

    const-string v1, "admodel"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/AdModel;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SplashActivity"

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v1, v0, Lcom/ifengyu/intercom/bean/AdModel;->isPublish:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getPublishTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getPublishTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUnpublishTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUnpublishTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

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

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->b:Lio/reactivex/disposables/b;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/SplashActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->a:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->setContentView(I)V

    const v0, 0x7f10019c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->c:Lpl/droidsonroids/gif/GifImageView;

    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->c:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, v2}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->a:Landroid/os/Bundle;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Z

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->d()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/SplashActivity;->c()V

    return-void

    :cond_0
    const-string v0, "sp_user"

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "username"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->q:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->b:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;->a:Landroid/os/Bundle;

    return-void
.end method
