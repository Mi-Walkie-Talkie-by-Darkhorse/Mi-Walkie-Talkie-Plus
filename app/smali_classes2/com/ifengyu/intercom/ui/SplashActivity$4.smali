.class Lcom/ifengyu/intercom/ui/SplashActivity$4;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->a:Lpl/droidsonroids/gif/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->a:Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->a:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$4;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->e(Lcom/ifengyu/intercom/ui/SplashActivity;)V

    return-void
.end method
