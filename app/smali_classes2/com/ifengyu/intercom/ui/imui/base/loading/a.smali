.class public Lcom/ifengyu/intercom/ui/imui/base/loading/a;
.super Ljava/lang/Object;
.source "LoadingStateManager.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field public d:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

.field public e:Lcom/ifengyu/intercom/ui/imui/base/loading/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a:I

    sput v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b:I

    sput v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/base/loading/b;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a$1;-><init>(Lcom/ifengyu/intercom/ui/imui/base/loading/a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->e:Lcom/ifengyu/intercom/ui/imui/base/loading/b;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->e:Lcom/ifengyu/intercom/ui/imui/base/loading/b;

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    new-instance v3, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-direct {v3, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/view/View;

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_5

    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d(Landroid/view/View;)Landroid/view/View;

    :cond_1
    :goto_3
    invoke-direct {p0, p2, v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b(Lcom/ifengyu/intercom/ui/imui/base/loading/b;Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V

    invoke-direct {p0, p2, v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c(Lcom/ifengyu/intercom/ui/imui/base/loading/b;Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V

    invoke-direct {p0, p2, v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a(Lcom/ifengyu/intercom/ui/imui/base/loading/b;Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->getRetryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->a(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->getLoadingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->b(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->c(Landroid/view/View;)V

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->d:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a()V

    return-void

    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the argument\'s type must be Fragment or Activity: initWindow(context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move v0, v2

    goto :goto_2

    :cond_7
    const-string v0, "LoadingStateManager"

    const-string v1, "Content parent is null,use LoadingStateView"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v3, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d(Landroid/view/View;)Landroid/view/View;

    goto :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/base/loading/b;)Lcom/ifengyu/intercom/ui/imui/base/loading/a;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/a;-><init>(Ljava/lang/Object;Lcom/ifengyu/intercom/ui/imui/base/loading/b;)V

    return-object v0
.end method

.method private a(Lcom/ifengyu/intercom/ui/imui/base/loading/b;Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->c()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b(I)Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b(Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :cond_2
    sget v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c:I

    if-eqz v0, :cond_0

    sget v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->c:I

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b(I)Landroid/view/View;

    goto :goto_0
.end method

.method private b(Lcom/ifengyu/intercom/ui/imui/base/loading/b;Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a(I)Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a(Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :cond_2
    sget v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->a:I

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a(I)Landroid/view/View;

    goto :goto_0
.end method

.method private c(Lcom/ifengyu/intercom/ui/imui/base/loading/b;Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c(I)Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c(Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :cond_2
    sget v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b:I

    if-eqz v0, :cond_0

    sget v0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->b:I

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c(I)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->d:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->d:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/a;->d:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c()V

    return-void
.end method
