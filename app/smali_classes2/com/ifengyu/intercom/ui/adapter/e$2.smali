.class Lcom/ifengyu/intercom/ui/adapter/e$2;
.super Ljava/lang/Object;
.source "GaoDeOfflineCityChild.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/adapter/e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/e;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/e$2;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e$2;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/e;->e(Lcom/ifengyu/intercom/ui/adapter/e;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
