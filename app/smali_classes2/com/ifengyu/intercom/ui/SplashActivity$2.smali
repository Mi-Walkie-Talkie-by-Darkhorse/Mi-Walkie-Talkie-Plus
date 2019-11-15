.class Lcom/ifengyu/intercom/ui/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lio/reactivex/m;


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
        "Lio/reactivex/m",
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$2;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/l;)V
    .locals 10
    .param p1    # Lio/reactivex/l;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l",
            "<",
            "Lcom/ifengyu/intercom/bean/AdModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v6, 0x5dc

    const-wide/16 v8, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/ifengyu/intercom/node/a/a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/SplashActivity$2;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/node/a/b;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/node/a/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/node/a/a;-><init>(Lcom/ifengyu/intercom/node/a/b;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/SplashActivity$2;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/a/a;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$2;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;)Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/SplashActivity$2;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    iget-object v4, v2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/ui/SplashActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/AdModel;->type:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    sub-long v4, v8, v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    invoke-interface {p1, v2}, Lio/reactivex/l;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    sub-long v2, v6, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    invoke-interface {p1}, Lio/reactivex/l;->a()V

    goto :goto_0
.end method
