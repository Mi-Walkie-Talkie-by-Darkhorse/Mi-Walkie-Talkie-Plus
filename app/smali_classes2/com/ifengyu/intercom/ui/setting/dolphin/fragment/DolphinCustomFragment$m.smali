.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field final synthetic c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/f;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$m;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method
