.class Lcom/qmuiteam/qmui/arch/a;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InnerBaseActivity.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/record/LatestVisitArgumentCollector;


# static fields
.field private static e:I = -0x64

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/qmuiteam/qmui/c/g;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/a;->a:Z

    .line 3
    sget v0, Lcom/qmuiteam/qmui/arch/a;->e:I

    iput v0, p0, Lcom/qmuiteam/qmui/arch/a;->b:I

    .line 4
    sget-object v0, Lcom/qmuiteam/qmui/arch/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/arch/a;->d:I

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lcom/qmuiteam/qmui/arch/annotation/LatestVisitRecord;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/qmuiteam/qmui/arch/d;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/arch/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/d;->a()V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/arch/d;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/arch/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/arch/d;->a(Lcom/qmuiteam/qmui/arch/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/c/g;)V
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/a;->c:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/a;->c:Lcom/qmuiteam/qmui/c/g;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method i()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/arch/g;->b(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/a;->a:Z

    return-void
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCollectLatestVisitArgument(Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/arch/a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/a;->a:Z

    .line 4
    invoke-static {p0}, Lcom/qmuiteam/qmui/arch/g;->a(Landroid/app/Activity;)V

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/arch/a;->b:I

    sget v0, Lcom/qmuiteam/qmui/arch/a;->e:I

    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    sget p1, Lcom/qmuiteam/qmui/arch/a;->e:I

    iput p1, p0, Lcom/qmuiteam/qmui/arch/a;->b:I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/qmuiteam/qmui/c/f;

    invoke-direct {v1, p0, v0}, Lcom/qmuiteam/qmui/c/f;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;)V

    invoke-static {v0, v1}, Landroidx/core/view/f;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/a;->k()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/a;->c:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/a;->c:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/a;->a:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "InnerBaseActivity"

    const-string v1, "setRequestedOrientation when activity is translucent"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/arch/a;->b:I

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method
