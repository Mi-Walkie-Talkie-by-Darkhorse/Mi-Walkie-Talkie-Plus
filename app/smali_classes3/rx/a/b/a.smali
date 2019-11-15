.class public final Lrx/a/b/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a/b/a$a;
    }
.end annotation


# direct methods
.method public static a()Lrx/d;
    .locals 1

    invoke-static {}, Lrx/a/a/a;->a()Lrx/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a/a/a;->b()Lrx/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a/a/b;->b()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/a/b/a$a;->a:Lrx/d;

    goto :goto_0
.end method
