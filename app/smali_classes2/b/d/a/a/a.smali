.class public abstract Lb/d/a/a/a;
.super Lb/d/a/a/b;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/d/a/a/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lb/d/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 3
    new-instance p1, Lb/d/a/a/a$a;

    invoke-direct {p1, p0, p2}, Lb/d/a/a/a$a;-><init>(Lb/d/a/a/a;I)V

    invoke-virtual {p0, p1}, Lb/d/a/a/b;->a(Lb/d/a/a/c/a;)Lb/d/a/a/b;

    return-void
.end method


# virtual methods
.method protected abstract a(Lb/d/a/a/c/c;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a/a/c/c;",
            "TT;I)V"
        }
    .end annotation
.end method
