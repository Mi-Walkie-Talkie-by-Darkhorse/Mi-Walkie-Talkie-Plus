.class public Lcom/chad/library/adapter/base/m/g;
.super Ljava/lang/Object;
.source "UpFetchModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0017J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\rH\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "Lcom/chad/library/adapter/base/listener/UpFetchListenerImp;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "isUpFetchEnable",
        "",
        "()Z",
        "setUpFetchEnable",
        "(Z)V",
        "isUpFetching",
        "setUpFetching",
        "mUpFetchListener",
        "Lcom/chad/library/adapter/base/listener/OnUpFetchListener;",
        "startUpFetchPosition",
        "",
        "getStartUpFetchPosition",
        "()I",
        "setStartUpFetchPosition",
        "(I)V",
        "autoUpFetch",
        "",
        "position",
        "autoUpFetch$com_github_CymChad_brvah",
        "setOnUpFetchListener",
        "listener",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/chad/library/adapter/base/l/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:I


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/g;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/g;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/chad/library/adapter/base/m/g;->d:I

    if-gt p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/chad/library/adapter/base/m/g;->a:Lcom/chad/library/adapter/base/l/i;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/chad/library/adapter/base/l/i;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnUpFetchListener(Lcom/chad/library/adapter/base/l/i;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/g;->a:Lcom/chad/library/adapter/base/l/i;

    return-void
.end method
