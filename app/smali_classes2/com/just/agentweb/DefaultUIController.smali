.class public Lcom/just/agentweb/DefaultUIController;
.super Lcom/just/agentweb/AbsAgentWebUIController;
.source "DefaultUIController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroidx/appcompat/app/b;

.field private mAskOpenOtherAppDialog:Landroidx/appcompat/app/b;

.field protected mConfirmDialog:Landroidx/appcompat/app/b;

.field private mJsPromptResult:Landroid/webkit/JsPromptResult;

.field private mJsResult:Landroid/webkit/JsResult;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPromptDialog:Landroidx/appcompat/app/b;

.field private mResources:Landroid/content/res/Resources;

.field private mWebParentLayout:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/just/agentweb/AbsAgentWebUIController;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mJsPromptResult:Landroid/webkit/JsPromptResult;

    .line 3
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mJsResult:Landroid/webkit/JsResult;

    .line 4
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/b;

    .line 5
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/b;

    .line 6
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController;->mJsResult:Landroid/webkit/JsResult;

    return-object p0
.end method

.method static synthetic access$100(Lcom/just/agentweb/DefaultUIController;Landroid/webkit/JsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/DefaultUIController;->toCancelJsresult(Landroid/webkit/JsResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController;->mJsPromptResult:Landroid/webkit/JsPromptResult;

    return-object p0
.end method

.method static synthetic access$300(Lcom/just/agentweb/DefaultUIController;)Landroidx/appcompat/app/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/b;

    return-object p0
.end method

.method private onForceDownloadAlertInternal(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/just/agentweb/R$string;->agentweb_tips:I

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/just/agentweb/R$string;->agentweb_honeycomblow:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/just/agentweb/R$string;->agentweb_download:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/just/agentweb/DefaultUIController$4;

    invoke-direct {v2, p0, p1}, Lcom/just/agentweb/DefaultUIController$4;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/just/agentweb/R$string;->agentweb_cancel:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/just/agentweb/DefaultUIController$3;

    invoke-direct {v1, p0}, Lcom/just/agentweb/DefaultUIController$3;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultUIController;->toCancelJsresult(Landroid/webkit/JsResult;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/b;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/b$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/just/agentweb/DefaultUIController$9;

    invoke-direct {v2, p0}, Lcom/just/agentweb/DefaultUIController$9;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/just/agentweb/DefaultUIController$8;

    invoke-direct {v2, p0}, Lcom/just/agentweb/DefaultUIController$8;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/just/agentweb/DefaultUIController$7;

    invoke-direct {v1, p0}, Lcom/just/agentweb/DefaultUIController$7;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 12
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/b;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b;->c(Ljava/lang/CharSequence;)V

    .line 15
    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mJsResult:Landroid/webkit/JsResult;

    .line 16
    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mConfirmDialog:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 17
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultUIController;->toCancelJsresult(Landroid/webkit/JsResult;)V

    return-void
.end method

.method private onJsPromptInternal(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/b;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance p2, Landroidx/appcompat/app/b$a;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/b$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/b$a;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance v0, Lcom/just/agentweb/DefaultUIController$12;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultUIController$12;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 12
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const p2, 0x104000a

    new-instance v0, Lcom/just/agentweb/DefaultUIController$11;

    invoke-direct {v0, p0, v1}, Lcom/just/agentweb/DefaultUIController$11;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/widget/EditText;)V

    .line 13
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/b$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    new-instance p2, Lcom/just/agentweb/DefaultUIController$10;

    invoke-direct {p2, p0}, Lcom/just/agentweb/DefaultUIController$10;-><init>(Lcom/just/agentweb/DefaultUIController;)V

    .line 14
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/b$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/b;

    .line 16
    :cond_2
    iput-object p3, p0, Lcom/just/agentweb/DefaultUIController;->mJsPromptResult:Landroid/webkit/JsPromptResult;

    .line 17
    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mPromptDialog:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 18
    :cond_3
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method

.method private showChooserInternal([Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    new-instance v2, Lcom/just/agentweb/DefaultUIController$6;

    invoke-direct {v2, p0, p2}, Lcom/just/agentweb/DefaultUIController$6;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    .line 5
    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/app/b$a;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    new-instance v0, Lcom/just/agentweb/DefaultUIController$5;

    invoke-direct {v0, p0, p2}, Lcom/just/agentweb/DefaultUIController$5;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mAlertDialog:Landroidx/appcompat/app/b;

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private toCancelJsresult(Landroid/webkit/JsResult;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bindSupportWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    .line 2
    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    .line 3
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public onCancelLoading()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public onForceDownloadAlert(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultUIController;->onForceDownloadAlertInternal(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/just/agentweb/AgentWebUtils;->toastShowShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/DefaultUIController;->onJsConfirmInternal(Ljava/lang/String;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/just/agentweb/DefaultUIController;->onJsPromptInternal(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    return-void
.end method

.method public onLoading(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 7
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMainFrameError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mWebParentLayout onMainFrameError:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/just/agentweb/WebParentLayout;->showPageMainFrameError()V

    :cond_0
    return-void
.end method

.method public onOpenPagePrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebUIController;->TAG:Ljava/lang/String;

    const-string p2, "onOpenPagePrompt"

    invoke-static {p1, p2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/b;

    if-nez p2, :cond_2

    .line 6
    new-instance p2, Landroidx/appcompat/app/b$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/just/agentweb/R$string;->agentweb_leave_app_and_go_other_page:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {p1}, Lcom/just/agentweb/AgentWebUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/b$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/just/agentweb/R$string;->agentweb_tips:I

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance v0, Lcom/just/agentweb/DefaultUIController$2;

    invoke-direct {v0, p0, p3}, Lcom/just/agentweb/DefaultUIController$2;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    .line 10
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/just/agentweb/R$string;->agentweb_leave:I

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/just/agentweb/DefaultUIController$1;

    invoke-direct {v0, p0, p3}, Lcom/just/agentweb/DefaultUIController$1;-><init>(Lcom/just/agentweb/DefaultUIController;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/b$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/b;

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController;->mAskOpenOtherAppDialog:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSelectItemsPrompt(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/just/agentweb/DefaultUIController;->showChooserInternal([Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public onShowMainFrame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultUIController;->mWebParentLayout:Lcom/just/agentweb/WebParentLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/just/agentweb/WebParentLayout;->hideErrorLayout()V

    :cond_0
    return-void
.end method

.method public onShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "performDownload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/just/agentweb/DefaultUIController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/just/agentweb/AgentWebUtils;->toastShowShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
