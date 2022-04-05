.class Lcom/ifengyu/intercom/ui/SplashActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


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
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/ifengyu/intercom/bean/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$b;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 10
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/ifengyu/intercom/bean/AdModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$b;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;)Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/SplashActivity$b;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    iget-object v4, v2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    const-wide/16 v7, 0x12c

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    sub-long/2addr v7, v3

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    invoke-interface {p1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/16 v6, 0x5dc

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    sub-long/2addr v6, v2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
