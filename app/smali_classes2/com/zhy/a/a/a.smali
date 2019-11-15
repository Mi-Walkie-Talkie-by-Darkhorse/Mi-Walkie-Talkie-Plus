.class public abstract Lcom/zhy/a/a/a;
.super Lcom/zhy/a/a/b;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zhy/a/a/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:I

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/zhy/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/zhy/a/a/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/a/a/a;->e:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/zhy/a/a/a;->c:I

    iput-object p3, p0, Lcom/zhy/a/a/a;->d:Ljava/util/List;

    new-instance v0, Lcom/zhy/a/a/a$1;

    invoke-direct {v0, p0, p2}, Lcom/zhy/a/a/a$1;-><init>(Lcom/zhy/a/a/a;I)V

    invoke-virtual {p0, v0}, Lcom/zhy/a/a/a;->a(Lcom/zhy/a/a/a/a;)Lcom/zhy/a/a/b;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/zhy/a/a/a/c;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhy/a/a/a/c;",
            "TT;I)V"
        }
    .end annotation
.end method
