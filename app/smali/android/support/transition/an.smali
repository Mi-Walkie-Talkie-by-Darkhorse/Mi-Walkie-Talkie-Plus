.class abstract Landroid/support/transition/an;
.super Landroid/support/transition/y;
.source "VisibilityPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/an$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/an;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/y;-><init>()V

    return-void
.end method

.method private a(Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/support/transition/an$a;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/support/transition/an$a;

    invoke-direct {v1}, Landroid/support/transition/an$a;-><init>()V

    iput-boolean v4, v1, Landroid/support/transition/an$a;->a:Z

    iput-boolean v4, v1, Landroid/support/transition/an$a;->b:Z

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/transition/an$a;->c:I

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/transition/an$a;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/transition/an$a;->d:I

    iget-object v0, p2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/transition/an$a;->f:Landroid/view/ViewGroup;

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, v1, Landroid/support/transition/an$a;->c:I

    iget v2, v1, Landroid/support/transition/an$a;->d:I

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Landroid/support/transition/an$a;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroid/support/transition/an$a;->f:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    iput v5, v1, Landroid/support/transition/an$a;->c:I

    iput-object v6, v1, Landroid/support/transition/an$a;->e:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iput v5, v1, Landroid/support/transition/an$a;->d:I

    iput-object v6, v1, Landroid/support/transition/an$a;->f:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/support/transition/an$a;->c:I

    iget v2, v1, Landroid/support/transition/an$a;->d:I

    if-eq v0, v2, :cond_6

    iget v0, v1, Landroid/support/transition/an$a;->c:I

    if-nez v0, :cond_5

    iput-boolean v4, v1, Landroid/support/transition/an$a;->b:Z

    iput-boolean v3, v1, Landroid/support/transition/an$a;->a:Z

    :cond_3
    :goto_3
    if-nez p1, :cond_8

    iput-boolean v3, v1, Landroid/support/transition/an$a;->b:Z

    iput-boolean v3, v1, Landroid/support/transition/an$a;->a:Z

    :cond_4
    :goto_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    iget v0, v1, Landroid/support/transition/an$a;->d:I

    if-nez v0, :cond_3

    iput-boolean v3, v1, Landroid/support/transition/an$a;->b:Z

    iput-boolean v3, v1, Landroid/support/transition/an$a;->a:Z

    goto :goto_3

    :cond_6
    iget-object v0, v1, Landroid/support/transition/an$a;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroid/support/transition/an$a;->f:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Landroid/support/transition/an$a;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    iput-boolean v4, v1, Landroid/support/transition/an$a;->b:Z

    iput-boolean v3, v1, Landroid/support/transition/an$a;->a:Z

    goto :goto_3

    :cond_7
    iget-object v0, v1, Landroid/support/transition/an$a;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    iput-boolean v3, v1, Landroid/support/transition/an$a;->b:Z

    iput-boolean v3, v1, Landroid/support/transition/an$a;->a:Z

    goto :goto_3

    :cond_8
    if-nez p2, :cond_4

    iput-boolean v4, v1, Landroid/support/transition/an$a;->b:Z

    iput-boolean v3, v1, Landroid/support/transition/an$a;->a:Z

    goto :goto_4
.end method

.method private d(Landroid/support/transition/ae;)V
    .locals 3

    iget-object v0, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3}, Landroid/support/transition/an;->a(Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/support/transition/an$a;

    move-result-object v6

    iget-boolean v3, v6, Landroid/support/transition/an$a;->a:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/support/transition/an;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    :cond_0
    if-eqz p2, :cond_5

    iget-object v3, p2, Landroid/support/transition/ae;->b:Landroid/view/View;

    move-object v5, v3

    :goto_0
    if-eqz p3, :cond_6

    iget-object v3, p3, Landroid/support/transition/ae;->b:Landroid/view/View;

    move-object v4, v3

    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    :cond_1
    int-to-long v8, v3

    invoke-virtual {p0, v5, v8, v9}, Landroid/support/transition/an;->a(Landroid/view/View;J)Z

    move-result v3

    if-nez v3, :cond_2

    int-to-long v8, v0

    invoke-virtual {p0, v4, v8, v9}, Landroid/support/transition/an;->a(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    const/4 v0, 0x1

    :goto_3
    move v1, v0

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, v6, Landroid/support/transition/an$a;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    iget-object v0, v6, Landroid/support/transition/an$a;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    :cond_4
    iget-boolean v0, v6, Landroid/support/transition/an$a;->b:Z

    if-eqz v0, :cond_9

    iget v3, v6, Landroid/support/transition/an$a;->c:I

    iget v5, v6, Landroid/support/transition/an$a;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/an;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_5
    move-object v5, v2

    goto :goto_0

    :cond_6
    move-object v4, v2

    goto :goto_1

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    iget v3, v6, Landroid/support/transition/an$a;->c:I

    iget v5, v6, Landroid/support/transition/an$a;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/an;->b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v2

    goto :goto_4
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/an;->d(Landroid/support/transition/ae;)V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/transition/an;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/an;->d(Landroid/support/transition/ae;)V

    return-void
.end method

.method public c(Landroid/support/transition/ae;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
