.class public Lcom/tencent/open/c/c;
.super Lcom/tencent/open/c/b;
.source "ProGuard"


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/view/KeyEvent;

.field private c:Lcom/tencent/open/web/security/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "openSDK_LOG.SecureWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->dispatchKeyEvent, is device support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/open/c/c;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/open/c/c;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/open/web/security/a;->b:Z

    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5f

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_4

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_4

    :cond_3
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    invoke-super {p0, v0}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "openSDK_LOG.SecureWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->create input connection, is edit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const-string v1, "openSDK_LOG.SecureWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->onCreateInputConnection, inputConn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/open/c/c;->a:Z

    new-instance v0, Lcom/tencent/open/web/security/a;

    invoke-super {p0, p1}, Lcom/tencent/open/c/b;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/tencent/open/web/security/a;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/tencent/open/c/c;->c:Lcom/tencent/open/web/security/a;

    iget-object v0, p0, Lcom/tencent/open/c/c;->c:Lcom/tencent/open/web/security/a;

    :goto_0
    return-object v0

    :cond_0
    sput-boolean v4, Lcom/tencent/open/c/c;->a:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "openSDK_LOG.SecureWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onKeyDown, is device support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/open/c/c;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/open/c/c;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/open/web/security/a;->b:Z

    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5f

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_4

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_4

    :cond_3
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/open/c/c;->b:Landroid/view/KeyEvent;

    invoke-super {p0, v0, v1}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/tencent/open/c/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
