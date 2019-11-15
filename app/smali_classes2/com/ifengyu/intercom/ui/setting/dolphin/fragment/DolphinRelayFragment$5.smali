.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;
.super Ljava/lang/Object;
.source "DolphinRelayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field final synthetic c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$5;->c:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->g(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->d(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method
