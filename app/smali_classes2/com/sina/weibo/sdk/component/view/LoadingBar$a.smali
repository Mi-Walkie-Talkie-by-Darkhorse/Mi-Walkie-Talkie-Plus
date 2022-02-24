.class Lcom/sina/weibo/sdk/component/view/LoadingBar$a;
.super Ljava/lang/Object;
.source "LoadingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/view/LoadingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/view/LoadingBar;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Lcom/sina/weibo/sdk/component/view/LoadingBar;I)V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$a;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(I)V

    return-void
.end method
