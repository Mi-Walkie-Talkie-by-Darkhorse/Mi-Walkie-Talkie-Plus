.class Lcom/ifengyu/intercom/ui/fragment/w1$a;
.super Ljava/lang/Object;
.source "AppUserProtocolFragment.java"

# interfaces
.implements Lcom/ifengyu/library/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/w1;->u3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/w1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/w1$a;->a:Lcom/ifengyu/intercom/ui/fragment/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/w1$a;->a:Lcom/ifengyu/intercom/ui/fragment/w1;

    const v0, 0x7f11034e

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/fragment/w1;->A3(Lcom/ifengyu/intercom/ui/fragment/w1;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/w1$a;->a:Lcom/ifengyu/intercom/ui/fragment/w1;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/w1;->z3(Lcom/ifengyu/intercom/ui/fragment/w1;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->r0(Z)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->F()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/w1$a;->a:Lcom/ifengyu/intercom/ui/fragment/w1;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->v3()V

    return-void
.end method
