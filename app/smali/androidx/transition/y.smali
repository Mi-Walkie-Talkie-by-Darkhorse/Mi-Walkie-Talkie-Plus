.class Landroidx/transition/y;
.super Ljava/lang/Object;
.source "TransitionValuesMaps.java"


# instance fields
.field final a:La/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a<",
            "Landroid/view/View;",
            "Landroidx/transition/x;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:La/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:La/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/y;->a:La/b/a;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, La/b/d;

    invoke-direct {v0}, La/b/d;-><init>()V

    iput-object v0, p0, Landroidx/transition/y;->c:La/b/d;

    .line 5
    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/y;->d:La/b/a;

    return-void
.end method
