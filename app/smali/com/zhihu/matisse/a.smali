.class public final Lcom/zhihu/matisse/a;
.super Ljava/lang/Object;
.source "Matisse.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/zhihu/matisse/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/a;->a:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zhihu/matisse/a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zhihu/matisse/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)Lcom/zhihu/matisse/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/zhihu/matisse/a;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static d(Landroidx/fragment/app/Fragment;)Lcom/zhihu/matisse/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/zhihu/matisse/a;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/a;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public static g(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "extra_result_selection"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/Set;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/MimeType;",
            ">;)",
            "Lcom/zhihu/matisse/SelectionCreator;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/a;->b(Ljava/util/Set;Z)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Set;Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/MimeType;",
            ">;Z)",
            "Lcom/zhihu/matisse/SelectionCreator;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/zhihu/matisse/SelectionCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/zhihu/matisse/SelectionCreator;-><init>(Lcom/zhihu/matisse/a;Ljava/util/Set;Z)V

    return-object v0
.end method

.method e()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method f()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
