.class Lb/f/a/a/b$a;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/a/a/b;->k(Landroid/view/ViewGroup;Lb/f/a/a/c/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/f/a/a/c/c;

.field final synthetic b:Lb/f/a/a/b;


# direct methods
.method constructor <init>(Lb/f/a/a/b;Lb/f/a/a/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/a/a/b$a;->b:Lb/f/a/a/b;

    iput-object p2, p0, Lb/f/a/a/b$a;->a:Lb/f/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/f/a/a/b$a;->b:Lb/f/a/a/b;

    iget-object v0, v0, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/f/a/a/b$a;->a:Lb/f/a/a/c/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lb/f/a/a/b$a;->b:Lb/f/a/a/b;

    iget-object v1, v1, Lb/f/a/a/b;->d:Lb/f/a/a/b$c;

    iget-object v2, p0, Lb/f/a/a/b$a;->a:Lb/f/a/a/c/c;

    invoke-interface {v1, p1, v2, v0}, Lb/f/a/a/b$c;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;I)V

    :cond_0
    return-void
.end method
