.class public abstract Lcom/bumptech/glide/request/a/i;
.super Lcom/bumptech/glide/request/a/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/a/a",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static b:Z

.field private static c:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/request/a/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/request/a/i;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/request/a/i;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/a/i;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/a/a;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    new-instance v0, Lcom/bumptech/glide/request/a/i$a;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/a/i$a;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/i;->d:Lcom/bumptech/glide/request/a/i$a;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/bumptech/glide/request/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/a/i;->b:Z

    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private f()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->d:Lcom/bumptech/glide/request/a/i$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a/i$a;->b()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a/g;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->d:Lcom/bumptech/glide/request/a/i$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a/i$a;->a(Lcom/bumptech/glide/request/a/g;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lcom/bumptech/glide/request/a;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/a/i;->f()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bumptech/glide/request/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bumptech/glide/request/a;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/request/a/g;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->d:Lcom/bumptech/glide/request/a/i$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/a/i$a;->b(Lcom/bumptech/glide/request/a/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
