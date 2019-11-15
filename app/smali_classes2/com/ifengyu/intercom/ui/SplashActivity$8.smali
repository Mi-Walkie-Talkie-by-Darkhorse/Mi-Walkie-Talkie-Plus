.class Lcom/ifengyu/intercom/ui/SplashActivity$8;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/SplashActivity;->a(ILpl/droidsonroids/gif/c;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/droidsonroids/gif/c;

.field final synthetic b:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lpl/droidsonroids/gif/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->a:Lpl/droidsonroids/gif/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0901f3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->a:Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->e(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    goto :goto_0
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const-string v0, "SplashActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity$8;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1
    .param p1    # Lio/reactivex/disposables/b;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$8;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Lio/reactivex/disposables/b;)Lio/reactivex/disposables/b;

    return-void
.end method
