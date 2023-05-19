.class public abstract Lcom/ifengyu/library/b/e/a;
.super Ljava/lang/Object;
.source "ErrorConsumer.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/ifengyu/library/http/exception/NewApiException;)V
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/b/e/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->b(Ljava/lang/Throwable;)Lcom/ifengyu/library/http/exception/NewApiException;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/library/b/e/a;->a(Lcom/ifengyu/library/http/exception/NewApiException;)V

    return-void
.end method
