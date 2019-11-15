.class public Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;
.super Landroid/widget/FrameLayout;
.source "LoadingStateView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->f:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    return-object v0
.end method

.method private d()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->f:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a:Ljava/lang/String;

    const-string v2, "you have already set a loading view and would be instead of this new one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$1;-><init>(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->f:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a:Ljava/lang/String;

    const-string v2, "you have already set a empty view and would be instead of this new one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$2;-><init>(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->f:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a:Ljava/lang/String;

    const-string v2, "you have already set a retry view and would be instead of this new one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$3;-><init>(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a:Ljava/lang/String;

    const-string v2, "you have already set a retry view and would be instead of this new one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->e:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->d:Landroid/view/View;

    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getRetryView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c:Landroid/view/View;

    return-object v0
.end method
