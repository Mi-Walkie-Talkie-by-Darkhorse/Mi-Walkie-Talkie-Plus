.class public abstract Lb/c/a/c/d;
.super Lb/c/a/c/a;
.source "StringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lb/c/a/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/c/a/c/a;-><init>()V

    .line 2
    new-instance v0, Lb/c/a/d/c;

    invoke-direct {v0}, Lb/c/a/d/c;-><init>()V

    iput-object v0, p0, Lb/c/a/c/d;->a:Lb/c/a/d/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/c/d;->h(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/d;->a:Lb/c/a/d/c;

    invoke-virtual {v0, p1}, Lb/c/a/d/c;->h(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v0
.end method
