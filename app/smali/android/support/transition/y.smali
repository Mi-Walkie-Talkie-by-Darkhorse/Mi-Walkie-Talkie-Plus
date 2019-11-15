.class abstract Landroid/support/transition/y;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/y$a;,
        Landroid/support/transition/y$c;,
        Landroid/support/transition/y$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/y$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/support/transition/af;

.field d:J

.field e:J

.field f:Landroid/animation/TimeInterpolator;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/support/transition/ad;

.field p:Landroid/view/ViewGroup;

.field q:Z

.field r:I

.field s:Z

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/y$b;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/support/transition/af;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/y;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Landroid/support/transition/y;->d:J

    iput-wide v4, p0, Landroid/support/transition/y;->e:J

    iput-object v1, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->m:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/y;->o:Landroid/support/transition/ad;

    iput-object v1, p0, Landroid/support/transition/y;->p:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/support/transition/y;->q:Z

    iput v2, p0, Landroid/support/transition/y;->r:I

    iput-boolean v2, p0, Landroid/support/transition/y;->s:Z

    iput-object v1, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/y;->b:Ljava/lang/String;

    new-instance v0, Landroid/support/transition/af;

    invoke-direct {v0}, Landroid/support/transition/af;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    new-instance v0, Landroid/support/transition/af;

    invoke-direct {v0}, Landroid/support/transition/af;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->v:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/support/transition/y;->x:Z

    return-void
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/y$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/transition/y$1;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/y$1;-><init>(Landroid/support/transition/y;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroid/support/transition/y;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 10

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    :goto_1
    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_6

    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/support/transition/ae;

    invoke-direct {v0}, Landroid/support/transition/ae;-><init>()V

    iput-object p1, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    if-eqz p2, :cond_a

    invoke-virtual {p0, v0}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    :goto_3
    if-eqz p2, :cond_c

    if-nez v6, :cond_b

    iget-object v2, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_7

    iget-object v2, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_4
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/y;->l:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    iget-object v0, p0, Landroid/support/transition/y;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/transition/y;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    iget-object v0, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    :goto_5
    if-ge v1, v2, :cond_e

    iget-object v0, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    goto :goto_3

    :cond_b
    iget-object v5, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    :cond_c
    if-nez v6, :cond_d

    iget-object v2, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_7

    iget-object v2, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_d
    iget-object v5, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    :cond_e
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v4

    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/y;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v6, v4

    goto/16 :goto_0
.end method

.method private static j()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/y$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/support/transition/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sget-object v1, Landroid/support/transition/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/transition/y;
    .locals 1

    iput-wide p1, p0, Landroid/support/transition/y;->e:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/y;
    .locals 0

    iput-object p1, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/support/transition/y$b;)Landroid/support/transition/y;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/y;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/y;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-wide v2, p0, Landroid/support/transition/y;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/y;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    if-lez v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v0

    :cond_6
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-lez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/y;->g()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/y;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/transition/y;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/y;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/transition/y;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/y;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/transition/y;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v0, Landroid/support/transition/y$2;

    invoke-direct {v0, p0}, Landroid/support/transition/y$2;-><init>(Landroid/support/transition/y;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public abstract a(Landroid/support/transition/ae;)V
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/transition/y;->x:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/ao;->a(Landroid/view/View;)Landroid/support/transition/ao;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y$a;

    iget-object v4, v0, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/transition/y$a;->d:Landroid/support/transition/ao;

    invoke-virtual {v3, v0}, Landroid/support/transition/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->b(Landroid/support/transition/y;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/y;->s:Z

    :cond_3
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 10

    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    invoke-virtual {v5, v4}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$a;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/transition/y$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    iget-object v6, v1, Landroid/support/transition/y$a;->c:Landroid/support/transition/ae;

    iget-object v3, v1, Landroid/support/transition/y$a;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v1, v1, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v1, v1, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/ae;

    :goto_1
    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v1, v1, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/ae;

    move-object v3, v1

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    iget-object v1, v6, Landroid/support/transition/ae;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v8, v6, Landroid/support/transition/ae;->a:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v3, Landroid/support/transition/ae;->a:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Landroid/support/transition/af;Landroid/support/transition/af;)V

    invoke-virtual {p0}, Landroid/support/transition/y;->e()V

    return-void

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move-object v3, v1

    goto :goto_2
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/af;Landroid/support/transition/af;)V
    .locals 16
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v7, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    new-instance v8, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v8, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    invoke-direct {v9, v2}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v4, v5, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/ListView;

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-nez v3, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v13

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    move-object v5, v3

    :goto_3
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    invoke-virtual {v7, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->remove(I)V

    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v15}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    move-object v5, v3

    goto :goto_3

    :cond_6
    const/4 v3, -0x1

    if-eq v13, v3, :cond_1e

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    const/4 v6, 0x0

    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v15, v13, :cond_1d

    :goto_6
    move-object v6, v4

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_4

    invoke-virtual {v7, v6}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v14, v15}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    invoke-virtual {v9, v14, v15}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_7
    if-ge v4, v5, :cond_b

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    invoke-virtual {v9, v12, v13}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    :goto_9
    invoke-virtual {v7, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    goto :goto_9

    :cond_e
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_a
    if-ge v4, v5, :cond_10

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v2, 0x0

    int-to-long v6, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a

    :cond_10
    invoke-virtual {v9}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_b
    if-ge v4, v5, :cond_11

    invoke-virtual {v9, v4}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    invoke-virtual {v9, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b

    :cond_11
    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    const/4 v2, 0x0

    move v4, v2

    :goto_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1a

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    if-nez v2, :cond_12

    if-eqz v3, :cond_17

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2, v3}, Landroid/support/transition/ae;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_17

    const/4 v5, 0x0

    if-eqz v3, :cond_19

    iget-object v7, v3, Landroid/support/transition/ae;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->a()[Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_1c

    if-eqz v9, :cond_1c

    array-length v2, v9

    if-lez v2, :cond_1c

    new-instance v5, Landroid/support/transition/ae;

    invoke-direct {v5}, Landroid/support/transition/ae;-><init>()V

    iput-object v7, v5, Landroid/support/transition/ae;->b:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    if-eqz v2, :cond_14

    const/4 v3, 0x0

    :goto_d
    array-length v12, v9

    if-ge v3, v12, :cond_14

    iget-object v12, v5, Landroid/support/transition/ae;->a:Ljava/util/Map;

    aget-object v13, v9, v3

    iget-object v14, v2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    aget-object v15, v9, v3

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_14
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v9

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v9, :cond_1b

    invoke-virtual {v8, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v8, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/y$a;

    iget-object v12, v2, Landroid/support/transition/y$a;->c:Landroid/support/transition/ae;

    if-eqz v12, :cond_18

    iget-object v12, v2, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-ne v12, v7, :cond_18

    iget-object v12, v2, Landroid/support/transition/y$a;->b:Ljava/lang/String;

    if-nez v12, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->i()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    :cond_15
    iget-object v12, v2, Landroid/support/transition/y$a;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_16
    iget-object v2, v2, Landroid/support/transition/y$a;->c:Landroid/support/transition/ae;

    invoke-virtual {v2, v5}, Landroid/support/transition/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v5

    :goto_f
    move-object v6, v3

    move-object v3, v7

    :goto_10
    if-eqz v6, :cond_17

    new-instance v5, Landroid/support/transition/y$a;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/support/transition/ao;->a(Landroid/view/View;)Landroid/support/transition/ao;

    move-result-object v9

    invoke-direct {v5, v3, v7, v9, v2}, Landroid/support/transition/y$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/ao;Landroid/support/transition/ae;)V

    invoke-virtual {v8, v6, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_c

    :cond_18
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    :cond_19
    iget-object v2, v2, Landroid/support/transition/ae;->b:Landroid/view/View;

    move-object v3, v2

    move-object v2, v5

    goto :goto_10

    :cond_1a
    return-void

    :cond_1b
    move-object v2, v5

    move-object v3, v6

    goto :goto_f

    :cond_1c
    move-object v2, v5

    move-object v3, v6

    goto :goto_f

    :cond_1d
    move-object v4, v6

    goto/16 :goto_6

    :cond_1e
    move-object v3, v4

    goto/16 :goto_4
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/transition/y;->a(Z)V

    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_0
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/support/transition/ae;

    invoke-direct {v4}, Landroid/support/transition/ae;-><init>()V

    iput-object v3, v4, Landroid/support/transition/ae;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object v5, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :goto_3
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    new-instance v1, Landroid/support/transition/ae;

    invoke-direct {v1}, Landroid/support/transition/ae;-><init>()V

    iput-object v0, v1, Landroid/support/transition/ae;->b:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    :goto_4
    if-eqz p2, :cond_7

    iget-object v3, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/transition/y;->a(Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method a(Landroid/view/View;J)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, p2

    if-nez v0, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_3
    iget-object v1, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_7

    move v2, v3

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroid/support/transition/y;->e:J

    return-wide v0
.end method

.method public b(Landroid/support/transition/y$b;)Landroid/support/transition/y;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public abstract b(Landroid/support/transition/ae;)V
.end method

.method public b(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/transition/y;->s:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/transition/y;->x:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/ao;->a(Landroid/view/View;)Landroid/support/transition/ao;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y$a;

    iget-object v5, v0, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/transition/y$a;->d:Landroid/support/transition/ao;

    invoke-virtual {v4, v0}, Landroid/support/transition/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->c(Landroid/support/transition/y;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Landroid/support/transition/y;->s:Z

    :cond_3
    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Landroid/support/transition/y;->d:J

    return-wide v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/transition/y;->h()Landroid/support/transition/y;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method protected e()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/transition/y;->f()V

    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    iget-object v0, p0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/y;->f()V

    invoke-direct {p0, v0, v1}, Landroid/support/transition/y;->a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/transition/y;->g()V

    return-void
.end method

.method protected f()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/transition/y;->r:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->d(Landroid/support/transition/y;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Landroid/support/transition/y;->x:Z

    :cond_1
    iget v0, p0, Landroid/support/transition/y;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/y;->r:I

    return-void
.end method

.method protected g()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/transition/y;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/y;->r:I

    iget v0, p0, Landroid/support/transition/y;->r:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->a(Landroid/support/transition/y;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ae;

    iget-object v0, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ae;

    iget-object v0, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/y;->x:Z

    :cond_3
    return-void
.end method

.method public h()Landroid/support/transition/y;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/transition/af;

    invoke-direct {v1}, Landroid/support/transition/af;-><init>()V

    iput-object v1, v0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    new-instance v1, Landroid/support/transition/af;

    invoke-direct {v1}, Landroid/support/transition/af;-><init>()V

    iput-object v1, v0, Landroid/support/transition/y;->w:Landroid/support/transition/af;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
