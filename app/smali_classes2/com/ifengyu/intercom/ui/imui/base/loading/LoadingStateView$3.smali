.class Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$3;
.super Ljava/lang/Object;
.source "LoadingStateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$3;->a:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$3;->a:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView$3;->a:Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->c(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;->a(Lcom/ifengyu/intercom/ui/imui/base/loading/LoadingStateView;Landroid/view/View;)V

    return-void
.end method
