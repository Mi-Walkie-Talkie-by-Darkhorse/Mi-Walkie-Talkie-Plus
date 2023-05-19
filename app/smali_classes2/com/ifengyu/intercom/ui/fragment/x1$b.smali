.class Lcom/ifengyu/intercom/ui/fragment/x1$b;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/x1;->s3()V
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
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/x1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/x1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

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

    .line 1
    iget-object v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "SplashFragment"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "the image type is null"

    .line 2
    invoke-static {v2, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    const-string v4, "gif"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "the image type is gif"

    .line 4
    invoke-static {v2, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/c;

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/fragment/x1;->g3(Lcom/ifengyu/intercom/ui/fragment/x1;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/fragment/x1;->g3(Lcom/ifengyu/intercom/ui/fragment/x1;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/fragment/x1;->h3(Lcom/ifengyu/intercom/ui/fragment/x1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/fragment/x1;->h3(Lcom/ifengyu/intercom/ui/fragment/x1;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f1103b4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 10
    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->i3(Lcom/ifengyu/intercom/ui/fragment/x1;Lcom/ifengyu/intercom/bean/AdModel;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the image type is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->i3(Lcom/ifengyu/intercom/ui/fragment/x1;Lcom/ifengyu/intercom/bean/AdModel;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v0, p1, v3}, Lcom/ifengyu/intercom/ui/fragment/x1;->j3(Lcom/ifengyu/intercom/ui/fragment/x1;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V

    .line 15
    iget p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->showInterval:I

    if-lez p1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v0, p1, v3}, Lcom/ifengyu/intercom/ui/fragment/x1;->k3(Lcom/ifengyu/intercom/ui/fragment/x1;ILpl/droidsonroids/gif/c;)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {p1, v1, v3}, Lcom/ifengyu/intercom/ui/fragment/x1;->k3(Lcom/ifengyu/intercom/ui/fragment/x1;ILpl/droidsonroids/gif/c;)V

    :goto_2
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/x1;->l3(Lcom/ifengyu/intercom/ui/fragment/x1;)V

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

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1$b;->a(Lcom/ifengyu/intercom/bean/AdModel;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method
