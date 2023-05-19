.class Lcom/ifengyu/library/utils/e$a;
.super Ljava/lang/Object;
.source "CountDownTimer.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/utils/e;->h()V
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
.field final synthetic a:Lcom/ifengyu/library/utils/e;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/utils/e$a;->a:Lcom/ifengyu/library/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/utils/e$a;->a:Lcom/ifengyu/library/utils/e;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/utils/e;->g(J)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/utils/e$a;->a:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->f()V

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

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/utils/e$a;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/utils/e$a;->a:Lcom/ifengyu/library/utils/e;

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/e;->a(Lcom/ifengyu/library/utils/e;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
