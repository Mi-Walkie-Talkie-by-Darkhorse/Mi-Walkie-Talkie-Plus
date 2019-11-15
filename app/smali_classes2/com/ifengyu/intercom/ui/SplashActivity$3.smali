.class Lcom/ifengyu/intercom/ui/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/SplashActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/q",
        "<",
        "Lcom/ifengyu/intercom/bean/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/AdModel;)V
    .locals 7
    .param p1    # Lcom/ifengyu/intercom/bean/AdModel;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SplashActivity"

    const-string v2, "the image type is null"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1, p1, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    iget v1, p1, Lcom/ifengyu/intercom/bean/AdModel;->showInterval:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    iget v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->showInterval:I

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;ILpl/droidsonroids/gif/c;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "gif"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SplashActivity"

    const-string v2, "the image type is gif"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lpl/droidsonroids/gif/c;

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->b(Lcom/ifengyu/intercom/ui/SplashActivity;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->b(Lcom/ifengyu/intercom/ui/SplashActivity;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0901f3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;)V

    goto :goto_0

    :cond_1
    const-string v1, "SplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the image type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;ILpl/droidsonroids/gif/c;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->e(Lcom/ifengyu/intercom/ui/SplashActivity;)V

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

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/ifengyu/intercom/bean/AdModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a(Lcom/ifengyu/intercom/bean/AdModel;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1
    .param p1    # Lio/reactivex/disposables/b;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$3;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lio/reactivex/disposables/b;)Lio/reactivex/disposables/b;

    return-void
.end method
