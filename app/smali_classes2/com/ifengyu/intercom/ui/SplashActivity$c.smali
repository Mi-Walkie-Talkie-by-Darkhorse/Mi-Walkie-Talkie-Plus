.class Lcom/ifengyu/intercom/ui/SplashActivity$c;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/SplashActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/ifengyu/intercom/bean/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 6
    .param p1    # Lcom/ifengyu/intercom/bean/AdModel;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SplashActivity"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "the image type is null"

    .line 2
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    const-string v3, "gif"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "the image type is gif"

    .line 4
    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/c;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->e(Lcom/ifengyu/intercom/ui/SplashActivity;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->e(Lcom/ifengyu/intercom/ui/SplashActivity;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f110307

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/SplashActivity;->g(Lcom/ifengyu/intercom/ui/SplashActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 10
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the image type is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    .line 15
    iget p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->showInterval:I

    if-lez p1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;ILpl/droidsonroids/gif/c;)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;ILpl/droidsonroids/gif/c;)V

    :goto_2
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->h(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/AdModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a(Lcom/ifengyu/intercom/bean/AdModel;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$c;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
