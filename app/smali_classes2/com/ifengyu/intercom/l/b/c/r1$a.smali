.class Lcom/ifengyu/intercom/l/b/c/r1$a;
.super Ljava/lang/Object;
.source "Mi3ProtocolFragment.java"

# interfaces
.implements Lcom/ifengyu/library/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/c/r1;->u3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/l/b/c/r1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/c/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/r1$a;->a:Lcom/ifengyu/intercom/l/b/c/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/r1$a;->a:Lcom/ifengyu/intercom/l/b/c/r1;

    const v0, 0x7f11034e

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/l/b/c/r1;->C3(Lcom/ifengyu/intercom/l/b/c/r1;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/r1$a;->a:Lcom/ifengyu/intercom/l/b/c/r1;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/c/r1;->z3(Lcom/ifengyu/intercom/l/b/c/r1;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/r1$a;->a:Lcom/ifengyu/intercom/l/b/c/r1;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/c/r1;->A3(Lcom/ifengyu/intercom/l/b/c/r1;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/r1$a;->a:Lcom/ifengyu/intercom/l/b/c/r1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/r1$a;->a:Lcom/ifengyu/intercom/l/b/c/r1;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/c/r1;->B3(Lcom/ifengyu/intercom/l/b/c/r1;)V

    return-void
.end method
