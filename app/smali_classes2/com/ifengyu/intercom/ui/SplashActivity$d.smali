.class Lcom/ifengyu/intercom/ui/SplashActivity$d;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/droidsonroids/gif/c;

.field final synthetic b:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lpl/droidsonroids/gif/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->a:Lpl/droidsonroids/gif/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->a:Lpl/droidsonroids/gif/c;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lpl/droidsonroids/gif/c;->pause()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$d;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->h(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    return-void
.end method
