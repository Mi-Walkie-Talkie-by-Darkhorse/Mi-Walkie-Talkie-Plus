.class public abstract Lb/c/a/c/c;
.super Lb/c/a/c/a;
.source "FileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lb/c/a/d/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/c/a/c/a;-><init>()V

    .line 2
    new-instance v0, Lb/c/a/d/b;

    invoke-direct {v0, p1, p2}, Lb/c/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lb/c/a/c/c;->a:Lb/c/a/d/b;

    .line 3
    invoke-virtual {v0, p0}, Lb/c/a/d/b;->l(Lb/c/a/c/b;)V

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
    invoke-virtual {p0, p1}, Lb/c/a/c/c;->h(Lokhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public h(Lokhttp3/Response;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/c;->a:Lb/c/a/d/b;

    invoke-virtual {v0, p1}, Lb/c/a/d/b;->j(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v0
.end method
