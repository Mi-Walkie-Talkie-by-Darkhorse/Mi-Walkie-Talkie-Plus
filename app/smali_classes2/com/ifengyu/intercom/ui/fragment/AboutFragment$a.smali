.class Lcom/ifengyu/intercom/ui/fragment/AboutFragment$a;
.super Lcom/ifengyu/intercom/p/f0;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->k3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment$a;->d:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/ifengyu/intercom/p/f0;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment$a;->d:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/HostFragment;->p3()Lcom/ifengyu/intercom/ui/fragment/HostFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method
