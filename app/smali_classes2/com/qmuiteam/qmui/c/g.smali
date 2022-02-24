.class public final Lcom/qmuiteam/qmui/c/g;
.super Ljava/lang/Object;
.source "QMUISkinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/c/g$e;,
        Lcom/qmuiteam/qmui/c/g$c;,
        Lcom/qmuiteam/qmui/c/g$d;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static i:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/c/j/a;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Resources$Theme;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Landroid/view/View$OnLayoutChangeListener;

.field private static m:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/res/Resources;

.field private c:Ljava/lang/String;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qmuiteam/qmui/c/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qmuiteam/qmui/c/g$c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lcom/qmuiteam/qmui/c/g;->h:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/g;->i:Landroid/util/ArrayMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/g;->k:Ljava/util/HashMap;

    .line 5
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/c;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/c;-><init>()V

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/qmuiteam/qmui/c/j/p;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/j/p;-><init>()V

    .line 7
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "textColor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "secondTextColor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/o;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/o;-><init>()V

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/e;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/e;-><init>()V

    const-string v2, "border"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/qmuiteam/qmui/c/j/n;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/j/n;-><init>()V

    .line 12
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "topSeparator"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "rightSeparator"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "bottomSeparator"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "LeftSeparator"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/s;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/s;-><init>()V

    const-string v2, "tintColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/b;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/b;-><init>()V

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/d;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/d;-><init>()V

    const-string v2, "bgTintColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/m;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/m;-><init>()V

    const-string v2, "progressColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/r;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/r;-><init>()V

    const-string v2, "tcTintColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/qmuiteam/qmui/c/j/q;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/j/q;-><init>()V

    .line 22
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "tclSrc"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "tctSrc"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "tcrSrc"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    const-string v2, "tcbSrc"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/j;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/j;-><init>()V

    const-string v2, "hintColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/t;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/t;-><init>()V

    const-string v2, "underline"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/l;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/l;-><init>()V

    const-string v2, "moreTextColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    new-instance v1, Lcom/qmuiteam/qmui/c/j/k;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/j/k;-><init>()V

    const-string v2, "moreBgColor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/qmuiteam/qmui/c/g$a;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/g$a;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/g;->l:Landroid/view/View$OnLayoutChangeListener;

    .line 31
    new-instance v0, Lcom/qmuiteam/qmui/c/g$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/g$b;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/g;->m:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/g;->d:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/c/g;->e:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/g;->g:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/qmuiteam/qmui/c/g;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/qmuiteam/qmui/c/g;->b:Landroid/content/res/Resources;

    .line 8
    iput-object p3, p0, Lcom/qmuiteam/qmui/c/g;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/View;)La/b/g;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_skin_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "[|]"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->h:[Ljava/lang/String;

    .line 42
    :goto_1
    instance-of v1, p1, Lcom/qmuiteam/qmui/c/i/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/qmuiteam/qmui/c/i/a;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/c/i/a;->getDefaultSkinAttrs()La/b/g;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v1}, La/b/g;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    new-instance v3, La/b/g;

    invoke-direct {v3, v1}, La/b/g;-><init>(La/b/g;)V

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 46
    :goto_2
    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/c/i/a;

    if-eqz p1, :cond_4

    .line 47
    invoke-interface {p1}, Lcom/qmuiteam/qmui/c/i/a;->getDefaultSkinAttrs()La/b/g;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 48
    invoke-virtual {p1}, La/b/g;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v3, :cond_3

    .line 49
    invoke-virtual {v3, p1}, La/b/g;->a(La/b/g;)V

    goto :goto_3

    .line 50
    :cond_3
    new-instance v3, La/b/g;

    invoke-direct {v3, p1}, La/b/g;-><init>(La/b/g;)V

    :cond_4
    :goto_3
    if-nez v3, :cond_6

    .line 51
    array-length p1, v0

    if-gtz p1, :cond_5

    return-object v2

    .line 52
    :cond_5
    new-instance v3, La/b/g;

    array-length p1, v0

    invoke-direct {v3, p1}, La/b/g;-><init>(I)V

    .line 53
    :cond_6
    array-length p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_a

    aget-object v4, v0, v2

    const-string v5, ":"

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    goto :goto_5

    .line 56
    :cond_7
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v5}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    const/4 v6, 0x1

    .line 58
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qmuiteam/qmui/c/g;->a(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get attr id from name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "QMUISkinManager"

    invoke-static {v6, v4, v5}, Lcom/qmuiteam/qmui/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 60
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-object v3
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/c/g;)Landroid/content/res/Resources;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/qmuiteam/qmui/c/g;->b:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/qmuiteam/qmui/c/g;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/qmuiteam/qmui/c/g;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Lcom/qmuiteam/qmui/c/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Lcom/qmuiteam/qmui/c/g;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->i:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/c/g;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/c/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/qmuiteam/qmui/c/g;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/qmuiteam/qmui/c/g;->i:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Landroid/view/View;ILandroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;)La/b/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    :try_start_0
    instance-of v2, p1, Lcom/qmuiteam/qmui/c/d;

    if-eqz v2, :cond_0

    .line 19
    move-object v2, p1

    check-cast v2, Lcom/qmuiteam/qmui/c/d;

    invoke-interface {v2, p0, p2, p3, v0}, Lcom/qmuiteam/qmui/c/d;->a(Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;La/b/g;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;Landroid/content/res/Resources$Theme;La/b/g;)V

    .line 21
    :goto_0
    instance-of v2, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    .line 22
    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 24
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v5

    .line 25
    instance-of v6, v5, Lcom/qmuiteam/qmui/c/b;

    if-eqz v6, :cond_1

    .line 26
    check-cast v5, Lcom/qmuiteam/qmui/c/b;

    invoke-interface {v5, v2, p0, p2, p3}, Lcom/qmuiteam/qmui/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch error when apply theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; attrs = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string p1, "null"

    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {v0}, La/b/g;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "QMUISkinManager"

    .line 30
    invoke-static {v0, p3, p1, p2}, Lcom/qmuiteam/qmui/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 15
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/qmuiteam/qmui/skin/annotation/QMUISkinListenWithHierarchyChange;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 70
    iget-object v2, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    if-nez v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static b(Landroid/view/View;)Lcom/qmuiteam/qmui/c/g$e;
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_skin_current:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/qmuiteam/qmui/c/g$e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/qmuiteam/qmui/c/g$e;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/view/View;ILandroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {p1}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/view/View;)Lcom/qmuiteam/qmui/c/g$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget v1, v0, Lcom/qmuiteam/qmui/c/g$e;->b:I

    if-ne v1, p2, :cond_0

    iget-object v0, v0, Lcom/qmuiteam/qmui/c/g$e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/qmuiteam/qmui/c/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_skin_current:I

    new-instance v1, Lcom/qmuiteam/qmui/c/g$e;

    iget-object v2, p0, Lcom/qmuiteam/qmui/c/g;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2}, Lcom/qmuiteam/qmui/c/g$e;-><init>(Lcom/qmuiteam/qmui/c/g;Ljava/lang/String;I)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    instance-of v0, p1, Lcom/qmuiteam/qmui/c/a;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/c/a;

    invoke-interface {v0, p2, p3}, Lcom/qmuiteam/qmui/c/a;->a(ILandroid/content/res/Resources$Theme;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;ILandroid/content/res/Resources$Theme;)V

    .line 10
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->m:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0

    .line 14
    :cond_2
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->l:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/view/View;ILandroid/content/res/Resources$Theme;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_4

    instance-of v2, p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v2, :cond_7

    :cond_4
    if-eqz v0, :cond_5

    .line 18
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 19
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 20
    :goto_1
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_7

    .line 21
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Lcom/qmuiteam/qmui/c/c;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qmuiteam/qmui/c/c;

    if-eqz v0, :cond_6

    .line 22
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 23
    aget-object v2, v0, v1

    invoke-interface {v2, p1, p0, p2, p3}, Lcom/qmuiteam/qmui/c/c;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 30
    iget-object v1, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->b:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/qmuiteam/qmui/c/g;->c:Ljava/lang/String;

    const-string v2, "attr"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(I)Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/c/g$d;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/g$d;->a()Landroid/content/res/Resources$Theme;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/c/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v0, 0x1020002

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/qmuiteam/qmui/c/g;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/c/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/qmuiteam/qmui/c/g;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/c/g$d;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The skin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/g$d;->a()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 14
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/view/View;ILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/Resources$Theme;La/b/g;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # La/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/res/Resources$Theme;",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p3}, La/b/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 32
    invoke-virtual {p3, v0}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-virtual {p3, v0}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/qmuiteam/qmui/c/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qmuiteam/qmui/c/j/a;

    if-nez v1, :cond_1

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Do not find handler for skin attr name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "QMUISkinManager"

    invoke-static {p3, p1, p2}, Lcom/qmuiteam/qmui/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 37
    invoke-interface/range {v1 .. v6}, Lcom/qmuiteam/qmui/c/j/a;->a(Lcom/qmuiteam/qmui/c/g;Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V

    return-void
.end method

.method public addSkinChangeListener(Lcom/qmuiteam/qmui/c/g$c;)V
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/c/g$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/c/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/c/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method b(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/c/g$d;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/c/g$d;->a()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/view/View;ILandroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public removeSkinChangeListener(Lcom/qmuiteam/qmui/c/g$c;)V
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/c/g$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method
