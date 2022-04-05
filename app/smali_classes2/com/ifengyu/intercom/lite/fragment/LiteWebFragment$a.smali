.class Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment$a;
.super Lcom/just/agentweb/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;

    invoke-direct {p0}, Lcom/just/agentweb/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClientDelegate;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    :cond_0
    return-void
.end method
