.class public final Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final response:Lretrofit2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/k",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit2/k;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/k",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->response:Lretrofit2/k;

    iput-object p2, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/jakewharton/retrofit2/adapter/rxjava2/Result",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "error == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;-><init>(Lretrofit2/k;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static response(Lretrofit2/k;)Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/k",
            "<TT;>;)",
            "Lcom/jakewharton/retrofit2/adapter/rxjava2/Result",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "response == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;-><init>(Lretrofit2/k;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public response()Lretrofit2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/k",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->response:Lretrofit2/k;

    return-object v0
.end method
