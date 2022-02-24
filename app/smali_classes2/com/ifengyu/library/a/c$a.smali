.class Lcom/ifengyu/library/a/c$a;
.super Ljava/lang/Object;
.source "CountDownTimer.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/a/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/a/c$a;->a:Lcom/ifengyu/library/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/a/c$a;->a:Lcom/ifengyu/library/a/c;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/a/c;->a(J)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/a/c$a;->a:Lcom/ifengyu/library/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/a/c$a;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/a/c$a;->a:Lcom/ifengyu/library/a/c;

    invoke-static {v0, p1}, Lcom/ifengyu/library/a/c;->a(Lcom/ifengyu/library/a/c;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
