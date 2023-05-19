.class public abstract Lb/f/a/a/a;
.super Lb/f/a/a/b;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/f/a/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


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
    invoke-direct {p0, p1, p3}, Lb/f/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 3
    iput-object p3, p0, Lb/f/a/a/a;->e:Ljava/util/List;

    .line 4
    new-instance p1, Lb/f/a/a/a$a;

    invoke-direct {p1, p0, p2}, Lb/f/a/a/a$a;-><init>(Lb/f/a/a/a;I)V

    invoke-virtual {p0, p1}, Lb/f/a/a/b;->e(Lb/f/a/a/c/a;)Lb/f/a/a/b;

    return-void
.end method


# virtual methods
.method protected abstract m(Lb/f/a/a/c/c;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/a/c/c;",
            "TT;I)V"
        }
    .end annotation
.end method
