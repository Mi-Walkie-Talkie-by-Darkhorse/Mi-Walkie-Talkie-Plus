.class public abstract Lcom/just/agentweb/AbsAgentWebUIController;
.super Ljava/lang/Object;


# static fields
.field public static HAS_DESIGN_LIB:Z = false


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAgentWebUIControllerDelegate:Lcom/just/agentweb/AbsAgentWebUIController;

.field private volatile mIsBindWebParent:Z

.field private mWebParentLayout:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.material.snackbar.Snackbar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mIsBindWebParent:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
.end method

.method final declared-synchronized bindWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mIsBindWebParent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mIsBindWebParent:Z

    iput-object p1, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    iput-object p2, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/AbsAgentWebUIController;->bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected create()Lcom/just/agentweb/AbsAgentWebUIController;
    .locals 1

    sget-boolean v0, Lcom/just/agentweb/AbsAgentWebUIController;->HAS_DESIGN_LIB:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/just/agentweb/DefaultDesignUIController;

    invoke-direct {v0}, Lcom/just/agentweb/DefaultDesignUIController;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/just/agentweb/DefaultUIController;

    invoke-direct {v0}, Lcom/just/agentweb/DefaultUIController;-><init>()V

    :goto_0
    return-object v0
.end method

.method protected getDelegate()Lcom/just/agentweb/AbsAgentWebUIController;
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mAgentWebUIControllerDelegate:Lcom/just/agentweb/AbsAgentWebUIController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AbsAgentWebUIController;->create()Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->mAgentWebUIControllerDelegate:Lcom/just/agentweb/AbsAgentWebUIController;

    :cond_0
    return-object v0
.end method

.method public abstract onCancelLoading()V
.end method

.method public abstract onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
.end method

.method public abstract onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end method

.method public abstract onLoading(Ljava/lang/String;)V
.end method

.method public abstract onMainFrameError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onOpenPagePrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end method

.method public abstract onShowMainFrame()V
.end method

.method public abstract onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected toDismissDialog(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected toShowDialog(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
