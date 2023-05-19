.class Lcom/ifengyu/intercom/MiTalkiApp$a;
.super Ljava/lang/Object;
.source "MiTalkiApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/MiTalkiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field final synthetic c:Lcom/ifengyu/intercom/MiTalkiApp;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/MiTalkiApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->c:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->c:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/MiTalkiApp;->d(Lcom/ifengyu/intercom/MiTalkiApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 2
    iget p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->a:I

    .line 3
    iget-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->b:Z

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->c:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->E()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->a:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->a:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$a;->b:Z

    return-void
.end method
